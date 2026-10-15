const {chromium} = require(require.resolve('playwright',{paths:[process.cwd()]}));
const assert = require('node:assert/strict');
const path = require('node:path');
(async()=>{
  const browser=await chromium.launch();
  try {
    const page=await browser.newPage({viewport:{width:720,height:440}});
    const errors=[];
    page.on('pageerror',error=>errors.push(String(error)));
    await page.setContent('<style>body{margin:0}#table{height:319.8px}.tv-root{height:100%}.tv-scroll{width:100%}</style><div id="table"></div>');
    await page.addScriptTag({path:path.join(__dirname,'table-view.js')});
    const elapsed=await page.evaluate(()=>{
      const rows=Array.from({length:600},(_,i)=>({id:String(i),cells:{title:`App ${i}`,action:'Open app',path:'/Applications/'+('Long App Name With Spaces/'.repeat(i%5+1))+'Contents/MacOS/binary'}}));
      const columns=[{key:'title'},{key:'action'},{key:'path',detail:true}];
      const start=performance.now();
      window.table=TableView.mount(document.querySelector('#table'),{columns,rows},{marks:false,flags:false});
      window.fixture={rows,columns};
      return performance.now()-start;
    });
    assert.equal(await page.locator('tr[data-id]').count(),600);
    assert.ok(await page.locator('tr[data-id="4"] td.tv-detail').evaluate(el=>el.scrollWidth<=el.clientWidth+1));
    for(const width of [720,560]) {
      await page.setViewportSize({width,height:440});
      for(const id of ['599','0','333']) {
        await page.evaluate(id=>window.table.select(id),id);
        await page.waitForFunction(id=>{
          const row=document.querySelector(`tr[data-id="${id}"]`).getBoundingClientRect();
          const port=document.querySelector('.tv-scroll').getBoundingClientRect();
          return row.top>=port.top-1&&row.bottom<=port.bottom+1;
        },id);
        assert.equal(await page.locator('tr.tv-sel').getAttribute('data-id'),id);
      }
    }
    await page.evaluate(()=>window.table.setView({columns:window.fixture.columns,rows:window.fixture.rows.map(row=>({...row,cells:{...row.cells,path:''}}))}));
    assert.equal(await page.locator('td.tv-detail:visible').count(),0);
    await page.evaluate(()=>window.table.setView({columns:[{key:'title'},{key:'action'}],rows:window.fixture.rows}));
    assert.equal(await page.locator('.tv-details').count(),0);
    assert.ok(await page.locator('tr[data-id]').count()<100,'ordinary tables retain virtualization');
    await page.evaluate(()=>{
      window.table.destroy();
      window.table=TableView.mount(document.querySelector('#table'),window.fixture,{marks:false,flags:false,pageSize:20});
      window.table.nextPage();
      window.table.select('39');
      window.table.selectStep(1);
    });
    assert.equal(await page.locator('tr.tv-sel').getAttribute('data-id'),'40');
    await page.waitForFunction(()=>{
      const row=document.querySelector('tr.tv-sel').getBoundingClientRect(),port=document.querySelector('.tv-scroll').getBoundingClientRect();
      return row.top>=port.top-1&&row.bottom<=port.bottom+1;
    });
    assert.deepEqual(errors,[]);
    console.log(`Detail rows: wrap, 600-row selection/scroll, resize, empty details, page crossing, and ordinary virtualization passed; initial mount ${elapsed.toFixed(1)} ms`);
  } finally {await browser.close();}
})().catch(error=>{console.error(error);process.exitCode=1;});
