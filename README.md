# liquid39

Quick & nasty barcode ([Code 39](https://en.wikipedia.org/wiki/Code_39)) rendering sample with Liquid templates (ala Shopify).  This effort was borne out of a need to use Shopify to render an HTML email containing a barcode.  The fact that it's email-based HTML, means that one is restricted to [Liquid](https://github.com/Shopify/liquid) only (i.e., no JavaScript).

To run, make sure you have Ruby installed, then:

    gem install liquid
    ruby barcode.rb
