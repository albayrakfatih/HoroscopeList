class Burc {
  final String _burcAdi;
  final String _burcTarih;
  final String _burcDetay;
  final String _burcKucukResim;
  final String _burcBuyukResim;
  
 final get burcAdi => this._burcAdi;

 set burcAdi(final value) => this._burcAdi = value;

  get burcTarih => this._burcTarih;

 set burcTarih( value) => this._burcTarih = value;

  get burcDetay => this._burcDetay;

 set burcDetay( value) => this._burcDetay = value;

  get burcKucukResim => this._burcKucukResim;

 set burcKucukResim( value) => this._burcKucukResim = value;

  get burcBuyukResim => this._burcBuyukResim;

 set burcBuyukResim( value) => this._burcBuyukResim = value;

  Burc(this._burcAdi, this._burcTarih, this._burcDetay, this._burcKucukResim,
      this._burcBuyukResim);
  //burc nesnesi kullanabilmek için bunu oluşturmalıyız.

  @override
  String toString() {
    return '$_burcAdi - $_burcTarih - $_burcDetay - $_burcKucukResim - $_burcBuyukResim';
  }
}
