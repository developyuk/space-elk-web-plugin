import {baseUrl, iframeURL, namespace as ns} from './config.js';
import $ from '/project/node_modules/jquery/dist/jquery.slim.min.js';

const buttonHtml = `<button class='${ns}__button'>Donate</button>`;
const iframeHtml = `<iframe class='${ns}__iframe' src='${config.iframeURL}' style='display:none'></iframe>`;

$(buttonHtml).appendTo('body')
  .on('click',`.${ns}__button`,e=>{
    if($(`.${ns}__iframe`).length > 0){
      $(iframeHtml).appendTo('body');
    }

    const $iframeHtml = $(iframeHtml);
    $iframeHtml.show();
  })
