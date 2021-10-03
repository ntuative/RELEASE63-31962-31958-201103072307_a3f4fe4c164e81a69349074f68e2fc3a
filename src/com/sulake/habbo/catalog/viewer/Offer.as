package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1581:String = "pricing_model_unknown";
      
      public static const const_424:String = "pricing_model_single";
      
      public static const const_515:String = "pricing_model_multi";
      
      public static const const_438:String = "pricing_model_bundle";
      
      public static const const_1603:String = "price_type_none";
      
      public static const const_748:String = "price_type_credits";
      
      public static const const_1021:String = "price_type_activitypoints";
      
      public static const const_1207:String = "price_type_credits_and_activitypoints";
       
      
      private var var_665:String;
      
      private var var_1008:String;
      
      private var _offerId:int;
      
      private var var_1533:String;
      
      private var var_1009:int;
      
      private var var_1007:int;
      
      private var var_1534:int;
      
      private var var_408:ICatalogPage;
      
      private var var_666:IProductContainer;
      
      private var var_2070:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1533 = param1.localizationId;
         this.var_1009 = param1.priceInCredits;
         this.var_1007 = param1.priceInActivityPoints;
         this.var_1534 = param1.activityPointType;
         this.var_408 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_408;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1533;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1009;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1007;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1534;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_666;
      }
      
      public function get pricingModel() : String
      {
         return this.var_665;
      }
      
      public function get priceType() : String
      {
         return this.var_1008;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2070;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2070 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1533 = "";
         this.var_1009 = 0;
         this.var_1007 = 0;
         this.var_1534 = 0;
         this.var_408 = null;
         if(this.var_666 != null)
         {
            this.var_666.dispose();
            this.var_666 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_665)
         {
            case const_424:
               this.var_666 = new SingleProductContainer(this,param1);
               break;
            case const_515:
               this.var_666 = new MultiProductContainer(this,param1);
               break;
            case const_438:
               this.var_666 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_665);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_665 = const_424;
            }
            else
            {
               this.var_665 = const_515;
            }
         }
         else if(param1.length > 1)
         {
            this.var_665 = const_438;
         }
         else
         {
            this.var_665 = const_1581;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1009 > 0 && this.var_1007 > 0)
         {
            this.var_1008 = const_1207;
         }
         else if(this.var_1009 > 0)
         {
            this.var_1008 = const_748;
         }
         else if(this.var_1007 > 0)
         {
            this.var_1008 = const_1021;
         }
         else
         {
            this.var_1008 = const_1603;
         }
      }
   }
}
