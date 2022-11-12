class CountryModel {
  Name? name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  String? status;
  bool? unMember;
  Currencies? currencies;
  Idd? idd;
  List<String>? capital;
  List<String>? altSpellings;
  String? region;
  String? subregion;
  Languages? languages;
  Translations? translations;
  List<double>? latlng;
  bool? landlocked;
  double? area;
  //Demonyms? demonyms;
  String? flag;
  Maps? maps;
  int? population;
  String? fifa;
  Car? car;
  List<String>? timezones;
  List<String>? continents;
  Flags? flags;
  CoatOfArms? coatOfArms;
  String? startOfWeek;
  CapitalInfo? capitalInfo;
  PostalCode? postalCode;

  CountryModel({
    this.name,
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.currencies,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.area,
    //this.demonyms,
    this.flag,
    this.maps,
    this.population,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
    this.postalCode,
  });

  CountryModel.fromJson(Map<String, dynamic> json) {
    name = (json['name']) != null ? Name.fromJson(json['name']) : null;
    tld = (json['tld'] as List?)?.map((dynamic e) => e as String).toList();
    cca2 = json['cca2'] as String?;
    ccn3 = json['ccn3'] as String?;
    cca3 = json['cca3'] as String?;
    cioc = json['cioc'] as String?;
    independent = json['independent'] as bool?;
    status = json['status'] as String?;
    unMember = json['unMember'] as bool?;
    currencies = (json['currencies'] as Map<String, dynamic>?) != null
        ? Currencies.fromJson(json['currencies'] as Map<String, dynamic>)
        : null;
    idd = (json['idd'] as Map<String, dynamic>?) != null
        ? Idd.fromJson(json['idd'] as Map<String, dynamic>)
        : null;
    capital =
        (json['capital'] as List?)?.map((dynamic e) => e as String).toList();
    altSpellings = (json['altSpellings'] as List?)
        ?.map((dynamic e) => e as String)
        .toList();
    region = json['region'] as String?;
    subregion = json['subregion'] as String?;
    languages = (json['languages'] as Map<String, dynamic>?) != null
        ? Languages.fromJson(json['languages'] as Map<String, dynamic>)
        : null;
    translations = (json['translations'] as Map<String, dynamic>?) != null
        ? Translations.fromJson(json['translations'] as Map<String, dynamic>)
        : null;
    latlng =
        (json['latlng'] as List?)?.map((dynamic e) => e as double).toList();
    landlocked = json['landlocked'] as bool?;
    area = json['area'] as double?;
    // demonyms = (json['demonyms'] as Map<String,dynamic>?) != null ? Demonyms.fromJson(json['demonyms'] as Map<String,dynamic>) : null;
    flag = json['flag'] as String?;
    maps = (json['maps'] as Map<String, dynamic>?) != null
        ? Maps.fromJson(json['maps'] as Map<String, dynamic>)
        : null;
    population = json['population'] as int?;
    fifa = json['fifa'] as String?;
    car = (json['car'] as Map<String, dynamic>?) != null
        ? Car.fromJson(json['car'] as Map<String, dynamic>)
        : null;
    timezones =
        (json['timezones'] as List?)?.map((dynamic e) => e as String).toList();
    continents =
        (json['continents'] as List?)?.map((dynamic e) => e as String).toList();
    flags = (json['flags'] as Map<String, dynamic>?) != null
        ? Flags.fromJson(json['flags'] as Map<String, dynamic>)
        : null;
    coatOfArms = (json['coatOfArms'] as Map<String, dynamic>?) != null
        ? CoatOfArms.fromJson(json['coatOfArms'] as Map<String, dynamic>)
        : null;
    startOfWeek = json['startOfWeek'] as String?;
    capitalInfo = (json['capitalInfo'] as Map<String, dynamic>?) != null
        ? CapitalInfo.fromJson(json['capitalInfo'] as Map<String, dynamic>)
        : null;
    postalCode = (json['postalCode'] as Map<String, dynamic>?) != null
        ? PostalCode.fromJson(json['postalCode'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name?.toJson();
    json['tld'] = tld;
    json['cca2'] = cca2;
    json['ccn3'] = ccn3;
    json['cca3'] = cca3;
    json['cioc'] = cioc;
    json['independent'] = independent;
    json['status'] = status;
    json['unMember'] = unMember;
    json['currencies'] = currencies?.toJson();
    json['idd'] = idd?.toJson();
    json['capital'] = capital;
    json['altSpellings'] = altSpellings;
    json['region'] = region;
    json['subregion'] = subregion;
    json['languages'] = languages?.toJson();
    json['translations'] = translations?.toJson();
    json['latlng'] = latlng;
    json['landlocked'] = landlocked;
    json['area'] = area;
    //json['demonyms'] = demonyms?.toJson();
    json['flag'] = flag;
    json['maps'] = maps?.toJson();
    json['population'] = population;
    json['fifa'] = fifa;
    json['car'] = car?.toJson();
    json['timezones'] = timezones;
    json['continents'] = continents;
    json['flags'] = flags?.toJson();
    json['coatOfArms'] = coatOfArms?.toJson();
    json['startOfWeek'] = startOfWeek;
    json['capitalInfo'] = capitalInfo?.toJson();
    json['postalCode'] = postalCode?.toJson();
    return json;
  }
}

class Name {
  String? common;
  String? official;
  NativeName? nativeName;

  Name({
    this.common,
    this.official,
    this.nativeName,
  });

  Name.fromJson(Map<String, dynamic> json) {
    common = json['common'] as String?;
    official = json['official'] as String?;
    nativeName = (json['nativeName'] as Map<String, dynamic>?) != null
        ? NativeName.fromJson(json['nativeName'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['common'] = common;
    json['official'] = official;
    json['nativeName'] = nativeName?.toJson();
    return json;
  }
}

class NativeName {
  Eng? eng;

  NativeName({
    this.eng,
  });

  NativeName.fromJson(Map<String, dynamic> json) {
    eng = (json['eng'] as Map<String, dynamic>?) != null
        ? Eng.fromJson(json['eng'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['eng'] = eng?.toJson();
    return json;
  }
}

class Eng {
  String? official;
  String? common;

  Eng({
    this.official,
    this.common,
  });

  Eng.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Currencies {
  Currencies({
    this.bbd,
    this.usd,
    this.xaf,
    this.brl,
    this.eur,
    this.aud,
    this.kid,
    this.ron,
    this.lak,
    this.xof,
    this.iqd,
    this.kes,
    this.kyd,
    this.gnf,
    this.tnd,
    this.bob,
    this.cny,
    this.krw,
    this.kwd,
    this.dzd,
    this.awg,
    this.rub,
    this.dkk,
    this.gbp,
    this.twd,
    this.cad,
    this.fjd,
    this.xpf,
    this.pen,
    this.clp,
    this.egp,
    this.mkd,
    this.bdt,
    this.sgd,
    this.etb,
    this.bsd,
    this.tmt,
    this.ang,
    this.zmw,
    this.hnl,
    this.mad,
    this.npr,
    this.xcd,
    this.omr,
    this.hkd,
    this.pyg,
    this.mdl,
    this.kgs,
    this.mur,
    this.btn,
    this.inr,
    this.yer,
    this.imp,
    this.dop,
    this.ggp,
    this.lrd,
    this.zwl,
    this.ugx,
    this.vuv,
    this.ils,
    this.jod,
    this.pkr,
    this.bnd,
    this.aed,
    this.gel,
    this.scr,
    this.fkp,
    this.gip,
    this.sbd,
    this.uzs,
    this.mnt,
    this.gyd,
    this.bam,
    this.top,
    this.rwf,
    this.bgn,
    this.ngn,
    this.shp,
    this.fok,
    this.lsl,
    this.zar,
    this.cve,
    this.kpw,
    this.cuc,
    this.cup,
    this.srd,
    this.nzd,
    this.mxn,
    this.php,
    this.sek,
    this.jmd,
    this.ves,
    this.jep,
    this.afn,
    this.mop,
    this.syp,
    this.stn,
    this.chf,
    this.szl,
    this.myr,
    this.pln,
    this.ssp,
    this.khr,
    this.lkr,
    this.ghs,
    this.ern,
    this.bzd,
    this.ttd,
    this.ckd,
    this.mzn,
    this.irr,
    this.cdf,
    this.mvr,
    this.mru,
    this.czk,
    this.byn,
    this.all,
    this.mwk,
    this.sos,
    this.rsd,
    this.isk,
    this.wst,
    this.mmk,
    this.thb,
    this.lbp,
    this.kzt,
    this.tvd,
    this.huf,
    this.nok,
    this.kmf,
    this.sdg,
    this.amd,
    this.uyu,
    this.sar,
    this.bif,
    this.uah,
    this.sll,
    this.bmd,
    this.nad,
    this.htg,
    this.lyd,
    this.pgk,
    this.aoa,
    this.idr,
    this.ars,
    this.pab,
    this.jpy,
    this.nio,
    this.tzs,
    this.tjs,
    this.gtq,
    this.bhd,
    this.mga,
    this.djf,
    this.gmd,
    this.bwp,
    this.currenciesTry,
    this.azn,
    this.crc,
    this.vnd,
    this.hrk,
    this.qar,
    this.cop,
  });

  Aed? bbd;
  Aed? usd;
  Aed? xaf;
  Aed? brl;
  Aed? eur;
  Aed? aud;
  Aed? kid;
  Aed? ron;
  Aed? lak;
  Aed? xof;
  Aed? iqd;
  Aed? kes;
  Aed? kyd;
  Aed? gnf;
  Aed? tnd;
  Aed? bob;
  Aed? cny;
  Aed? krw;
  Aed? kwd;
  Aed? dzd;
  Aed? awg;
  Aed? rub;
  Aed? dkk;
  Aed? gbp;
  Aed? twd;
  Aed? cad;
  Aed? fjd;
  Aed? xpf;
  Aed? pen;
  Aed? clp;
  Aed? egp;
  Aed? mkd;
  Aed? bdt;
  Aed? sgd;
  Aed? etb;
  Aed? bsd;
  Aed? tmt;
  Aed? ang;
  Aed? zmw;
  Aed? hnl;
  Aed? mad;
  Aed? npr;
  Aed? xcd;
  Aed? omr;
  Aed? hkd;
  Aed? pyg;
  Aed? mdl;
  Aed? kgs;
  Aed? mur;
  Aed? btn;
  Aed? inr;
  Aed? yer;
  Aed? imp;
  Aed? dop;
  Aed? ggp;
  Aed? lrd;
  Aed? zwl;
  Aed? ugx;
  Aed? vuv;
  Aed? ils;
  Aed? jod;
  Aed? pkr;
  Aed? bnd;
  Aed? aed;
  Aed? gel;
  Aed? scr;
  Aed? fkp;
  Aed? gip;
  Aed? sbd;
  Aed? uzs;
  Aed? mnt;
  Aed? gyd;
  Bam? bam;
  Aed? top;
  Aed? rwf;
  Aed? bgn;
  Aed? ngn;
  Aed? shp;
  Aed? fok;
  Aed? lsl;
  Aed? zar;
  Aed? cve;
  Aed? kpw;
  Aed? cuc;
  Aed? cup;
  Aed? srd;
  Aed? nzd;
  Aed? mxn;
  Aed? php;
  Aed? sek;
  Aed? jmd;
  Aed? ves;
  Aed? jep;
  Aed? afn;
  Aed? mop;
  Aed? syp;
  Aed? stn;
  Aed? chf;
  Aed? szl;
  Aed? myr;
  Aed? pln;
  Aed? ssp;
  Aed? khr;
  Aed? lkr;
  Aed? ghs;
  Aed? ern;
  Aed? bzd;
  Aed? ttd;
  Aed? ckd;
  Aed? mzn;
  Aed? irr;
  Aed? cdf;
  Aed? mvr;
  Aed? mru;
  Aed? czk;
  Aed? byn;
  Aed? all;
  Aed? mwk;
  Aed? sos;
  Aed? rsd;
  Aed? isk;
  Aed? wst;
  Aed? mmk;
  Aed? thb;
  Aed? lbp;
  Aed? kzt;
  Aed? tvd;
  Aed? huf;
  Aed? nok;
  Aed? kmf;
  Bam? sdg;
  Aed? amd;
  Aed? uyu;
  Aed? sar;
  Aed? bif;
  Aed? uah;
  Aed? sll;
  Aed? bmd;
  Aed? nad;
  Aed? htg;
  Aed? lyd;
  Aed? pgk;
  Aed? aoa;
  Aed? idr;
  Aed? ars;
  Aed? pab;
  Aed? jpy;
  Aed? nio;
  Aed? tzs;
  Aed? tjs;
  Aed? gtq;
  Aed? bhd;
  Aed? mga;
  Aed? djf;
  Aed? gmd;
  Aed? bwp;
  Aed? currenciesTry;
  Aed? azn;
  Aed? crc;
  Aed? vnd;
  Aed? hrk;
  Aed? qar;
  Aed? cop;

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        bbd: json["BBD"] == null ? null : Aed.fromJson(json["BBD"]),
        usd: json["USD"] == null ? null : Aed.fromJson(json["USD"]),
        xaf: json["XAF"] == null ? null : Aed.fromJson(json["XAF"]),
        brl: json["BRL"] == null ? null : Aed.fromJson(json["BRL"]),
        eur: json["EUR"] == null ? null : Aed.fromJson(json["EUR"]),
        aud: json["AUD"] == null ? null : Aed.fromJson(json["AUD"]),
        kid: json["KID"] == null ? null : Aed.fromJson(json["KID"]),
        ron: json["RON"] == null ? null : Aed.fromJson(json["RON"]),
        lak: json["LAK"] == null ? null : Aed.fromJson(json["LAK"]),
        xof: json["XOF"] == null ? null : Aed.fromJson(json["XOF"]),
        iqd: json["IQD"] == null ? null : Aed.fromJson(json["IQD"]),
        kes: json["KES"] == null ? null : Aed.fromJson(json["KES"]),
        kyd: json["KYD"] == null ? null : Aed.fromJson(json["KYD"]),
        gnf: json["GNF"] == null ? null : Aed.fromJson(json["GNF"]),
        tnd: json["TND"] == null ? null : Aed.fromJson(json["TND"]),
        bob: json["BOB"] == null ? null : Aed.fromJson(json["BOB"]),
        cny: json["CNY"] == null ? null : Aed.fromJson(json["CNY"]),
        krw: json["KRW"] == null ? null : Aed.fromJson(json["KRW"]),
        kwd: json["KWD"] == null ? null : Aed.fromJson(json["KWD"]),
        dzd: json["DZD"] == null ? null : Aed.fromJson(json["DZD"]),
        awg: json["AWG"] == null ? null : Aed.fromJson(json["AWG"]),
        rub: json["RUB"] == null ? null : Aed.fromJson(json["RUB"]),
        dkk: json["DKK"] == null ? null : Aed.fromJson(json["DKK"]),
        gbp: json["GBP"] == null ? null : Aed.fromJson(json["GBP"]),
        twd: json["TWD"] == null ? null : Aed.fromJson(json["TWD"]),
        cad: json["CAD"] == null ? null : Aed.fromJson(json["CAD"]),
        fjd: json["FJD"] == null ? null : Aed.fromJson(json["FJD"]),
        xpf: json["XPF"] == null ? null : Aed.fromJson(json["XPF"]),
        pen: json["PEN"] == null ? null : Aed.fromJson(json["PEN"]),
        clp: json["CLP"] == null ? null : Aed.fromJson(json["CLP"]),
        egp: json["EGP"] == null ? null : Aed.fromJson(json["EGP"]),
        mkd: json["MKD"] == null ? null : Aed.fromJson(json["MKD"]),
        bdt: json["BDT"] == null ? null : Aed.fromJson(json["BDT"]),
        sgd: json["SGD"] == null ? null : Aed.fromJson(json["SGD"]),
        etb: json["ETB"] == null ? null : Aed.fromJson(json["ETB"]),
        bsd: json["BSD"] == null ? null : Aed.fromJson(json["BSD"]),
        tmt: json["TMT"] == null ? null : Aed.fromJson(json["TMT"]),
        ang: json["ANG"] == null ? null : Aed.fromJson(json["ANG"]),
        zmw: json["ZMW"] == null ? null : Aed.fromJson(json["ZMW"]),
        hnl: json["HNL"] == null ? null : Aed.fromJson(json["HNL"]),
        mad: json["MAD"] == null ? null : Aed.fromJson(json["MAD"]),
        npr: json["NPR"] == null ? null : Aed.fromJson(json["NPR"]),
        xcd: json["XCD"] == null ? null : Aed.fromJson(json["XCD"]),
        omr: json["OMR"] == null ? null : Aed.fromJson(json["OMR"]),
        hkd: json["HKD"] == null ? null : Aed.fromJson(json["HKD"]),
        pyg: json["PYG"] == null ? null : Aed.fromJson(json["PYG"]),
        mdl: json["MDL"] == null ? null : Aed.fromJson(json["MDL"]),
        kgs: json["KGS"] == null ? null : Aed.fromJson(json["KGS"]),
        mur: json["MUR"] == null ? null : Aed.fromJson(json["MUR"]),
        btn: json["BTN"] == null ? null : Aed.fromJson(json["BTN"]),
        inr: json["INR"] == null ? null : Aed.fromJson(json["INR"]),
        yer: json["YER"] == null ? null : Aed.fromJson(json["YER"]),
        imp: json["IMP"] == null ? null : Aed.fromJson(json["IMP"]),
        dop: json["DOP"] == null ? null : Aed.fromJson(json["DOP"]),
        ggp: json["GGP"] == null ? null : Aed.fromJson(json["GGP"]),
        lrd: json["LRD"] == null ? null : Aed.fromJson(json["LRD"]),
        zwl: json["ZWL"] == null ? null : Aed.fromJson(json["ZWL"]),
        ugx: json["UGX"] == null ? null : Aed.fromJson(json["UGX"]),
        vuv: json["VUV"] == null ? null : Aed.fromJson(json["VUV"]),
        ils: json["ILS"] == null ? null : Aed.fromJson(json["ILS"]),
        jod: json["JOD"] == null ? null : Aed.fromJson(json["JOD"]),
        pkr: json["PKR"] == null ? null : Aed.fromJson(json["PKR"]),
        bnd: json["BND"] == null ? null : Aed.fromJson(json["BND"]),
        aed: json["AED"] == null ? null : Aed.fromJson(json["AED"]),
        gel: json["GEL"] == null ? null : Aed.fromJson(json["GEL"]),
        scr: json["SCR"] == null ? null : Aed.fromJson(json["SCR"]),
        fkp: json["FKP"] == null ? null : Aed.fromJson(json["FKP"]),
        gip: json["GIP"] == null ? null : Aed.fromJson(json["GIP"]),
        sbd: json["SBD"] == null ? null : Aed.fromJson(json["SBD"]),
        uzs: json["UZS"] == null ? null : Aed.fromJson(json["UZS"]),
        mnt: json["MNT"] == null ? null : Aed.fromJson(json["MNT"]),
        gyd: json["GYD"] == null ? null : Aed.fromJson(json["GYD"]),
        bam: json["BAM"] == null ? null : Bam.fromJson(json["BAM"]),
        top: json["TOP"] == null ? null : Aed.fromJson(json["TOP"]),
        rwf: json["RWF"] == null ? null : Aed.fromJson(json["RWF"]),
        bgn: json["BGN"] == null ? null : Aed.fromJson(json["BGN"]),
        ngn: json["NGN"] == null ? null : Aed.fromJson(json["NGN"]),
        shp: json["SHP"] == null ? null : Aed.fromJson(json["SHP"]),
        fok: json["FOK"] == null ? null : Aed.fromJson(json["FOK"]),
        lsl: json["LSL"] == null ? null : Aed.fromJson(json["LSL"]),
        zar: json["ZAR"] == null ? null : Aed.fromJson(json["ZAR"]),
        cve: json["CVE"] == null ? null : Aed.fromJson(json["CVE"]),
        kpw: json["KPW"] == null ? null : Aed.fromJson(json["KPW"]),
        cuc: json["CUC"] == null ? null : Aed.fromJson(json["CUC"]),
        cup: json["CUP"] == null ? null : Aed.fromJson(json["CUP"]),
        srd: json["SRD"] == null ? null : Aed.fromJson(json["SRD"]),
        nzd: json["NZD"] == null ? null : Aed.fromJson(json["NZD"]),
        mxn: json["MXN"] == null ? null : Aed.fromJson(json["MXN"]),
        php: json["PHP"] == null ? null : Aed.fromJson(json["PHP"]),
        sek: json["SEK"] == null ? null : Aed.fromJson(json["SEK"]),
        jmd: json["JMD"] == null ? null : Aed.fromJson(json["JMD"]),
        ves: json["VES"] == null ? null : Aed.fromJson(json["VES"]),
        jep: json["JEP"] == null ? null : Aed.fromJson(json["JEP"]),
        afn: json["AFN"] == null ? null : Aed.fromJson(json["AFN"]),
        mop: json["MOP"] == null ? null : Aed.fromJson(json["MOP"]),
        syp: json["SYP"] == null ? null : Aed.fromJson(json["SYP"]),
        stn: json["STN"] == null ? null : Aed.fromJson(json["STN"]),
        chf: json["CHF"] == null ? null : Aed.fromJson(json["CHF"]),
        szl: json["SZL"] == null ? null : Aed.fromJson(json["SZL"]),
        myr: json["MYR"] == null ? null : Aed.fromJson(json["MYR"]),
        pln: json["PLN"] == null ? null : Aed.fromJson(json["PLN"]),
        ssp: json["SSP"] == null ? null : Aed.fromJson(json["SSP"]),
        khr: json["KHR"] == null ? null : Aed.fromJson(json["KHR"]),
        lkr: json["LKR"] == null ? null : Aed.fromJson(json["LKR"]),
        ghs: json["GHS"] == null ? null : Aed.fromJson(json["GHS"]),
        ern: json["ERN"] == null ? null : Aed.fromJson(json["ERN"]),
        bzd: json["BZD"] == null ? null : Aed.fromJson(json["BZD"]),
        ttd: json["TTD"] == null ? null : Aed.fromJson(json["TTD"]),
        ckd: json["CKD"] == null ? null : Aed.fromJson(json["CKD"]),
        mzn: json["MZN"] == null ? null : Aed.fromJson(json["MZN"]),
        irr: json["IRR"] == null ? null : Aed.fromJson(json["IRR"]),
        cdf: json["CDF"] == null ? null : Aed.fromJson(json["CDF"]),
        mvr: json["MVR"] == null ? null : Aed.fromJson(json["MVR"]),
        mru: json["MRU"] == null ? null : Aed.fromJson(json["MRU"]),
        czk: json["CZK"] == null ? null : Aed.fromJson(json["CZK"]),
        byn: json["BYN"] == null ? null : Aed.fromJson(json["BYN"]),
        all: json["ALL"] == null ? null : Aed.fromJson(json["ALL"]),
        mwk: json["MWK"] == null ? null : Aed.fromJson(json["MWK"]),
        sos: json["SOS"] == null ? null : Aed.fromJson(json["SOS"]),
        rsd: json["RSD"] == null ? null : Aed.fromJson(json["RSD"]),
        isk: json["ISK"] == null ? null : Aed.fromJson(json["ISK"]),
        wst: json["WST"] == null ? null : Aed.fromJson(json["WST"]),
        mmk: json["MMK"] == null ? null : Aed.fromJson(json["MMK"]),
        thb: json["THB"] == null ? null : Aed.fromJson(json["THB"]),
        lbp: json["LBP"] == null ? null : Aed.fromJson(json["LBP"]),
        kzt: json["KZT"] == null ? null : Aed.fromJson(json["KZT"]),
        tvd: json["TVD"] == null ? null : Aed.fromJson(json["TVD"]),
        huf: json["HUF"] == null ? null : Aed.fromJson(json["HUF"]),
        nok: json["NOK"] == null ? null : Aed.fromJson(json["NOK"]),
        kmf: json["KMF"] == null ? null : Aed.fromJson(json["KMF"]),
        sdg: json["SDG"] == null ? null : Bam.fromJson(json["SDG"]),
        amd: json["AMD"] == null ? null : Aed.fromJson(json["AMD"]),
        uyu: json["UYU"] == null ? null : Aed.fromJson(json["UYU"]),
        sar: json["SAR"] == null ? null : Aed.fromJson(json["SAR"]),
        bif: json["BIF"] == null ? null : Aed.fromJson(json["BIF"]),
        uah: json["UAH"] == null ? null : Aed.fromJson(json["UAH"]),
        sll: json["SLL"] == null ? null : Aed.fromJson(json["SLL"]),
        bmd: json["BMD"] == null ? null : Aed.fromJson(json["BMD"]),
        nad: json["NAD"] == null ? null : Aed.fromJson(json["NAD"]),
        htg: json["HTG"] == null ? null : Aed.fromJson(json["HTG"]),
        lyd: json["LYD"] == null ? null : Aed.fromJson(json["LYD"]),
        pgk: json["PGK"] == null ? null : Aed.fromJson(json["PGK"]),
        aoa: json["AOA"] == null ? null : Aed.fromJson(json["AOA"]),
        idr: json["IDR"] == null ? null : Aed.fromJson(json["IDR"]),
        ars: json["ARS"] == null ? null : Aed.fromJson(json["ARS"]),
        pab: json["PAB"] == null ? null : Aed.fromJson(json["PAB"]),
        jpy: json["JPY"] == null ? null : Aed.fromJson(json["JPY"]),
        nio: json["NIO"] == null ? null : Aed.fromJson(json["NIO"]),
        tzs: json["TZS"] == null ? null : Aed.fromJson(json["TZS"]),
        tjs: json["TJS"] == null ? null : Aed.fromJson(json["TJS"]),
        gtq: json["GTQ"] == null ? null : Aed.fromJson(json["GTQ"]),
        bhd: json["BHD"] == null ? null : Aed.fromJson(json["BHD"]),
        mga: json["MGA"] == null ? null : Aed.fromJson(json["MGA"]),
        djf: json["DJF"] == null ? null : Aed.fromJson(json["DJF"]),
        gmd: json["GMD"] == null ? null : Aed.fromJson(json["GMD"]),
        bwp: json["BWP"] == null ? null : Aed.fromJson(json["BWP"]),
        currenciesTry: json["TRY"] == null ? null : Aed.fromJson(json["TRY"]),
        azn: json["AZN"] == null ? null : Aed.fromJson(json["AZN"]),
        crc: json["CRC"] == null ? null : Aed.fromJson(json["CRC"]),
        vnd: json["VND"] == null ? null : Aed.fromJson(json["VND"]),
        hrk: json["HRK"] == null ? null : Aed.fromJson(json["HRK"]),
        qar: json["QAR"] == null ? null : Aed.fromJson(json["QAR"]),
        cop: json["COP"] == null ? null : Aed.fromJson(json["COP"]),
      );

  Map<String, dynamic> toJson() => {
        "BBD": bbd == null ? null : bbd!.toJson(),
        "USD": usd == null ? null : usd!.toJson(),
        "XAF": xaf == null ? null : xaf!.toJson(),
        "BRL": brl == null ? null : brl!.toJson(),
        "EUR": eur == null ? null : eur!.toJson(),
        "AUD": aud == null ? null : aud!.toJson(),
        "KID": kid == null ? null : kid!.toJson(),
        "RON": ron == null ? null : ron!.toJson(),
        "LAK": lak == null ? null : lak!.toJson(),
        "XOF": xof == null ? null : xof!.toJson(),
        "IQD": iqd == null ? null : iqd?.toJson(),
        "KES": kes == null ? null : kes!.toJson(),
        "KYD": kyd == null ? null : kyd!.toJson(),
        "GNF": gnf == null ? null : gnf!.toJson(),
        "TND": tnd == null ? null : tnd!.toJson(),
        "BOB": bob == null ? null : bob!.toJson(),
        "CNY": cny == null ? null : cny!.toJson(),
        "KRW": krw == null ? null : krw!.toJson(),
        "KWD": kwd == null ? null : kwd!.toJson(),
        "DZD": dzd == null ? null : dzd!.toJson(),
        "AWG": awg == null ? null : awg!.toJson(),
        "RUB": rub == null ? null : rub!.toJson(),
        "DKK": dkk == null ? null : dkk!.toJson(),
        "GBP": gbp == null ? null : gbp!.toJson(),
        "TWD": twd == null ? null : twd!.toJson(),
        "CAD": cad == null ? null : cad!.toJson(),
        "FJD": fjd == null ? null : fjd!.toJson(),
        "XPF": xpf == null ? null : xpf!.toJson(),
        "PEN": pen == null ? null : pen!.toJson(),
        "CLP": clp == null ? null : clp!.toJson(),
        "EGP": egp == null ? null : egp!.toJson(),
        "MKD": mkd == null ? null : mkd!.toJson(),
        "BDT": bdt == null ? null : bdt!.toJson(),
        "SGD": sgd == null ? null : sgd!.toJson(),
        "ETB": etb == null ? null : etb!.toJson(),
        "BSD": bsd == null ? null : bsd!.toJson(),
        "TMT": tmt == null ? null : tmt!.toJson(),
        "ANG": ang == null ? null : ang!.toJson(),
        "ZMW": zmw == null ? null : zmw!.toJson(),
        "HNL": hnl == null ? null : hnl!.toJson(),
        "MAD": mad == null ? null : mad!.toJson(),
        "NPR": npr == null ? null : npr!.toJson(),
        "XCD": xcd == null ? null : xcd!.toJson(),
        "OMR": omr == null ? null : omr!.toJson(),
        "HKD": hkd == null ? null : hkd!.toJson(),
        "PYG": pyg == null ? null : pyg!.toJson(),
        "MDL": mdl == null ? null : mdl!.toJson(),
        "KGS": kgs == null ? null : kgs!.toJson(),
        "MUR": mur == null ? null : mur!.toJson(),
        "BTN": btn == null ? null : btn!.toJson(),
        "INR": inr == null ? null : inr!.toJson(),
        "YER": yer == null ? null : yer!.toJson(),
        "IMP": imp == null ? null : imp!.toJson(),
        "DOP": dop == null ? null : dop!.toJson(),
        "GGP": ggp == null ? null : ggp!.toJson(),
        "LRD": lrd == null ? null : lrd!.toJson(),
        "ZWL": zwl == null ? null : zwl!.toJson(),
        "UGX": ugx == null ? null : ugx!.toJson(),
        "VUV": vuv == null ? null : vuv!.toJson(),
        "ILS": ils == null ? null : ils!.toJson(),
        "JOD": jod == null ? null : jod!.toJson(),
        "PKR": pkr == null ? null : pkr!.toJson(),
        "BND": bnd == null ? null : bnd!.toJson(),
        "AED": aed == null ? null : aed!.toJson(),
        "GEL": gel == null ? null : gel!.toJson(),
        "SCR": scr == null ? null : scr!.toJson(),
        "FKP": fkp == null ? null : fkp!.toJson(),
        "GIP": gip == null ? null : gip!.toJson(),
        "SBD": sbd == null ? null : sbd!.toJson(),
        "UZS": uzs == null ? null : uzs!.toJson(),
        "MNT": mnt == null ? null : mnt!.toJson(),
        "GYD": gyd == null ? null : gyd!.toJson(),
        "BAM": bam == null ? null : bam!.toJson(),
        "TOP": top == null ? null : top!.toJson(),
        "RWF": rwf == null ? null : rwf!.toJson(),
        "BGN": bgn == null ? null : bgn!.toJson(),
        "NGN": ngn == null ? null : ngn!.toJson(),
        "SHP": shp == null ? null : shp!.toJson(),
        "FOK": fok == null ? null : fok!.toJson(),
        "LSL": lsl == null ? null : lsl!.toJson(),
        "ZAR": zar == null ? null : zar!.toJson(),
        "CVE": cve == null ? null : cve!.toJson(),
        "KPW": kpw == null ? null : kpw!.toJson(),
        "CUC": cuc == null ? null : cuc!.toJson(),
        "CUP": cup == null ? null : cup!.toJson(),
        "SRD": srd == null ? null : srd!.toJson(),
        "NZD": nzd == null ? null : nzd!.toJson(),
        "MXN": mxn == null ? null : mxn!.toJson(),
        "PHP": php == null ? null : php!.toJson(),
        "SEK": sek == null ? null : sek!.toJson(),
        "JMD": jmd == null ? null : jmd!.toJson(),
        "VES": ves == null ? null : ves!.toJson(),
        "JEP": jep == null ? null : jep!.toJson(),
        "AFN": afn == null ? null : afn!.toJson(),
        "MOP": mop == null ? null : mop!.toJson(),
        "SYP": syp == null ? null : syp!.toJson(),
        "STN": stn == null ? null : stn!.toJson(),
        "CHF": chf == null ? null : chf!.toJson(),
        "SZL": szl == null ? null : szl!.toJson(),
        "MYR": myr == null ? null : myr!.toJson(),
        "PLN": pln == null ? null : pln!.toJson(),
        "SSP": ssp == null ? null : ssp!.toJson(),
        "KHR": khr == null ? null : khr!.toJson(),
        "LKR": lkr == null ? null : lkr!.toJson(),
        "GHS": ghs == null ? null : ghs!.toJson(),
        "ERN": ern == null ? null : ern!.toJson(),
        "BZD": bzd == null ? null : bzd!.toJson(),
        "TTD": ttd == null ? null : ttd!.toJson(),
        "CKD": ckd == null ? null : ckd!.toJson(),
        "MZN": mzn == null ? null : mzn!.toJson(),
        "IRR": irr == null ? null : irr!.toJson(),
        "CDF": cdf == null ? null : cdf!.toJson(),
        "MVR": mvr == null ? null : mvr!.toJson(),
        "MRU": mru == null ? null : mru!.toJson(),
        "CZK": czk == null ? null : czk!.toJson(),
        "BYN": byn == null ? null : byn!.toJson(),
        "ALL": all == null ? null : all!.toJson(),
        "MWK": mwk == null ? null : mwk!.toJson(),
        "SOS": sos == null ? null : sos!.toJson(),
        "RSD": rsd == null ? null : rsd!.toJson(),
        "ISK": isk == null ? null : isk!.toJson(),
        "WST": wst == null ? null : wst!.toJson(),
        "MMK": mmk == null ? null : mmk!.toJson(),
        "THB": thb == null ? null : thb!.toJson(),
        "LBP": lbp == null ? null : lbp!.toJson(),
        "KZT": kzt == null ? null : kzt!.toJson(),
        "TVD": tvd == null ? null : tvd!.toJson(),
        "HUF": huf == null ? null : huf!.toJson(),
        "NOK": nok == null ? null : nok!.toJson(),
        "KMF": kmf == null ? null : kmf!.toJson(),
        "SDG": sdg == null ? null : sdg!.toJson(),
        "AMD": amd == null ? null : amd!.toJson(),
        "UYU": uyu == null ? null : uyu!.toJson(),
        "SAR": sar == null ? null : sar!.toJson(),
        "BIF": bif == null ? null : bif!.toJson(),
        "UAH": uah == null ? null : uah!.toJson(),
        "SLL": sll == null ? null : sll!.toJson(),
        "BMD": bmd == null ? null : bmd!.toJson(),
        "NAD": nad == null ? null : nad!.toJson(),
        "HTG": htg == null ? null : htg!.toJson(),
        "LYD": lyd == null ? null : lyd!.toJson(),
        "PGK": pgk == null ? null : pgk!.toJson(),
        "AOA": aoa == null ? null : aoa!.toJson(),
        "IDR": idr == null ? null : idr!.toJson(),
        "ARS": ars == null ? null : ars!.toJson(),
        "PAB": pab == null ? null : pab!.toJson(),
        "JPY": jpy == null ? null : jpy!.toJson(),
        "NIO": nio == null ? null : nio!.toJson(),
        "TZS": tzs == null ? null : tzs!.toJson(),
        "TJS": tjs == null ? null : tjs!.toJson(),
        "GTQ": gtq == null ? null : gtq!.toJson(),
        "BHD": bhd == null ? null : bhd!.toJson(),
        "MGA": mga == null ? null : mga!.toJson(),
        "DJF": djf == null ? null : djf!.toJson(),
        "GMD": gmd == null ? null : gmd!.toJson(),
        "BWP": bwp == null ? null : bwp!.toJson(),
        "TRY": currenciesTry == null ? null : currenciesTry!.toJson(),
        "AZN": azn == null ? null : azn!.toJson(),
        "CRC": crc == null ? null : crc!.toJson(),
        "VND": vnd == null ? null : vnd!.toJson(),
        "HRK": hrk == null ? null : hrk!.toJson(),
        "QAR": qar == null ? null : qar!.toJson(),
        "COP": cop == null ? null : cop!.toJson(),
      };
}

class Aed {
  Aed({
    this.name,
    this.symbol,
  });

  String? name;
  String? symbol;

  factory Aed.fromJson(Map<String, dynamic> json) => Aed(
        name: json["name"],
        symbol: json["symbol"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "symbol": symbol,
      };
}

class Bam {
  Bam({
    this.name,
  });

  String? name;

  factory Bam.fromJson(Map<String, dynamic> json) => Bam(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}

class Idd {
  String? root;
  List<String>? suffixes;

  Idd({
    this.root,
    this.suffixes,
  });

  Idd.fromJson(Map<String, dynamic> json) {
    root = json['root'] as String?;
    suffixes =
        (json['suffixes'] as List?)?.map((dynamic e) => e as String).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['root'] = root;
    json['suffixes'] = suffixes;
    return json;
  }
}

class Languages {
  String? eng;

  Languages({
    this.eng,
  });

  Languages.fromJson(Map<String, dynamic> json) {
    eng = json['eng'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['eng'] = eng;
    return json;
  }
}

class Translations {
  Ara? ara;
  Bre? bre;
  Ces? ces;
  Cym? cym;
  Deu? deu;
  Est? est;
  Fin? fin;
  Fra? fra;
  Hrv? hrv;
  Hun? hun;
  Ita? ita;
  Jpn? jpn;
  Kor? kor;
  Nld? nld;
  Per? per;
  Pol? pol;
  Por? por;
  Rus? rus;
  Slk? slk;
  Spa? spa;
  Swe? swe;
  Tur? tur;
  Urd? urd;
  Zho? zho;

  Translations({
    this.ara,
    this.bre,
    this.ces,
    this.cym,
    this.deu,
    this.est,
    this.fin,
    this.fra,
    this.hrv,
    this.hun,
    this.ita,
    this.jpn,
    this.kor,
    this.nld,
    this.per,
    this.pol,
    this.por,
    this.rus,
    this.slk,
    this.spa,
    this.swe,
    this.tur,
    this.urd,
    this.zho,
  });

  Translations.fromJson(Map<String, dynamic> json) {
    ara = (json['ara'] as Map<String, dynamic>?) != null
        ? Ara.fromJson(json['ara'] as Map<String, dynamic>)
        : null;
    bre = (json['bre'] as Map<String, dynamic>?) != null
        ? Bre.fromJson(json['bre'] as Map<String, dynamic>)
        : null;
    ces = (json['ces'] as Map<String, dynamic>?) != null
        ? Ces.fromJson(json['ces'] as Map<String, dynamic>)
        : null;
    cym = (json['cym'] as Map<String, dynamic>?) != null
        ? Cym.fromJson(json['cym'] as Map<String, dynamic>)
        : null;
    deu = (json['deu'] as Map<String, dynamic>?) != null
        ? Deu.fromJson(json['deu'] as Map<String, dynamic>)
        : null;
    est = (json['est'] as Map<String, dynamic>?) != null
        ? Est.fromJson(json['est'] as Map<String, dynamic>)
        : null;
    fin = (json['fin'] as Map<String, dynamic>?) != null
        ? Fin.fromJson(json['fin'] as Map<String, dynamic>)
        : null;
    fra = (json['fra'] as Map<String, dynamic>?) != null
        ? Fra.fromJson(json['fra'] as Map<String, dynamic>)
        : null;
    hrv = (json['hrv'] as Map<String, dynamic>?) != null
        ? Hrv.fromJson(json['hrv'] as Map<String, dynamic>)
        : null;
    hun = (json['hun'] as Map<String, dynamic>?) != null
        ? Hun.fromJson(json['hun'] as Map<String, dynamic>)
        : null;
    ita = (json['ita'] as Map<String, dynamic>?) != null
        ? Ita.fromJson(json['ita'] as Map<String, dynamic>)
        : null;
    jpn = (json['jpn'] as Map<String, dynamic>?) != null
        ? Jpn.fromJson(json['jpn'] as Map<String, dynamic>)
        : null;
    kor = (json['kor'] as Map<String, dynamic>?) != null
        ? Kor.fromJson(json['kor'] as Map<String, dynamic>)
        : null;
    nld = (json['nld'] as Map<String, dynamic>?) != null
        ? Nld.fromJson(json['nld'] as Map<String, dynamic>)
        : null;
    per = (json['per'] as Map<String, dynamic>?) != null
        ? Per.fromJson(json['per'] as Map<String, dynamic>)
        : null;
    pol = (json['pol'] as Map<String, dynamic>?) != null
        ? Pol.fromJson(json['pol'] as Map<String, dynamic>)
        : null;
    por = (json['por'] as Map<String, dynamic>?) != null
        ? Por.fromJson(json['por'] as Map<String, dynamic>)
        : null;
    rus = (json['rus'] as Map<String, dynamic>?) != null
        ? Rus.fromJson(json['rus'] as Map<String, dynamic>)
        : null;
    slk = (json['slk'] as Map<String, dynamic>?) != null
        ? Slk.fromJson(json['slk'] as Map<String, dynamic>)
        : null;
    spa = (json['spa'] as Map<String, dynamic>?) != null
        ? Spa.fromJson(json['spa'] as Map<String, dynamic>)
        : null;
    swe = (json['swe'] as Map<String, dynamic>?) != null
        ? Swe.fromJson(json['swe'] as Map<String, dynamic>)
        : null;
    tur = (json['tur'] as Map<String, dynamic>?) != null
        ? Tur.fromJson(json['tur'] as Map<String, dynamic>)
        : null;
    urd = (json['urd'] as Map<String, dynamic>?) != null
        ? Urd.fromJson(json['urd'] as Map<String, dynamic>)
        : null;
    zho = (json['zho'] as Map<String, dynamic>?) != null
        ? Zho.fromJson(json['zho'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['ara'] = ara?.toJson();
    json['bre'] = bre?.toJson();
    json['ces'] = ces?.toJson();
    json['cym'] = cym?.toJson();
    json['deu'] = deu?.toJson();
    json['est'] = est?.toJson();
    json['fin'] = fin?.toJson();
    json['fra'] = fra?.toJson();
    json['hrv'] = hrv?.toJson();
    json['hun'] = hun?.toJson();
    json['ita'] = ita?.toJson();
    json['jpn'] = jpn?.toJson();
    json['kor'] = kor?.toJson();
    json['nld'] = nld?.toJson();
    json['per'] = per?.toJson();
    json['pol'] = pol?.toJson();
    json['por'] = por?.toJson();
    json['rus'] = rus?.toJson();
    json['slk'] = slk?.toJson();
    json['spa'] = spa?.toJson();
    json['swe'] = swe?.toJson();
    json['tur'] = tur?.toJson();
    json['urd'] = urd?.toJson();
    json['zho'] = zho?.toJson();
    return json;
  }
}

class Ara {
  String? official;
  String? common;

  Ara({
    this.official,
    this.common,
  });

  Ara.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Bre {
  String? official;
  String? common;

  Bre({
    this.official,
    this.common,
  });

  Bre.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Ces {
  String? official;
  String? common;

  Ces({
    this.official,
    this.common,
  });

  Ces.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Cym {
  String? official;
  String? common;

  Cym({
    this.official,
    this.common,
  });

  Cym.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Deu {
  String? official;
  String? common;

  Deu({
    this.official,
    this.common,
  });

  Deu.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Est {
  String? official;
  String? common;

  Est({
    this.official,
    this.common,
  });

  Est.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Fin {
  String? official;
  String? common;

  Fin({
    this.official,
    this.common,
  });

  Fin.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Fra {
  String? official;
  String? common;

  Fra({
    this.official,
    this.common,
  });

  Fra.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Hrv {
  String? official;
  String? common;

  Hrv({
    this.official,
    this.common,
  });

  Hrv.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Hun {
  String? official;
  String? common;

  Hun({
    this.official,
    this.common,
  });

  Hun.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Ita {
  String? official;
  String? common;

  Ita({
    this.official,
    this.common,
  });

  Ita.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Jpn {
  String? official;
  String? common;

  Jpn({
    this.official,
    this.common,
  });

  Jpn.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Kor {
  String? official;
  String? common;

  Kor({
    this.official,
    this.common,
  });

  Kor.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Nld {
  String? official;
  String? common;

  Nld({
    this.official,
    this.common,
  });

  Nld.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Per {
  String? official;
  String? common;

  Per({
    this.official,
    this.common,
  });

  Per.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Pol {
  String? official;
  String? common;

  Pol({
    this.official,
    this.common,
  });

  Pol.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Por {
  String? official;
  String? common;

  Por({
    this.official,
    this.common,
  });

  Por.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Rus {
  String? official;
  String? common;

  Rus({
    this.official,
    this.common,
  });

  Rus.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Slk {
  String? official;
  String? common;

  Slk({
    this.official,
    this.common,
  });

  Slk.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Spa {
  String? official;
  String? common;

  Spa({
    this.official,
    this.common,
  });

  Spa.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Swe {
  String? official;
  String? common;

  Swe({
    this.official,
    this.common,
  });

  Swe.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Tur {
  String? official;
  String? common;

  Tur({
    this.official,
    this.common,
  });

  Tur.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Urd {
  String? official;
  String? common;

  Urd({
    this.official,
    this.common,
  });

  Urd.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Zho {
  String? official;
  String? common;

  Zho({
    this.official,
    this.common,
  });

  Zho.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

// class Eng {
//   String? f;
//   String? m;

//   Eng({
//     this.f,
//     this.m,
//   });

//   Eng.fromJson(Map<String, dynamic> json) {
//     f = json['f'] as String?;
//     m = json['m'] as String?;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['f'] = f;
//     json['m'] = m;
//     return json;
//   }
// }

// class Fra {
//   String? f;
//   String? m;

//   Fra({
//     this.f,
//     this.m,
//   });

//   Fra.fromJson(Map<String, dynamic> json) {
//     f = json['f'] as String?;
//     m = json['m'] as String?;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['f'] = f;
//     json['m'] = m;
//     return json;
//   }
// }

class Maps {
  String? googleMaps;
  String? openStreetMaps;

  Maps({
    this.googleMaps,
    this.openStreetMaps,
  });

  Maps.fromJson(Map<String, dynamic> json) {
    googleMaps = json['googleMaps'] as String?;
    openStreetMaps = json['openStreetMaps'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['googleMaps'] = googleMaps;
    json['openStreetMaps'] = openStreetMaps;
    return json;
  }
}

class Car {
  List<String>? signs;
  String? side;

  Car({
    this.signs,
    this.side,
  });

  Car.fromJson(Map<String, dynamic> json) {
    signs = (json['signs'] as List?)?.map((dynamic e) => e as String).toList();
    side = json['side'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['signs'] = signs;
    json['side'] = side;
    return json;
  }
}

class Flags {
  String? png;
  String? svg;

  Flags({
    this.png,
    this.svg,
  });

  Flags.fromJson(Map<String, dynamic> json) {
    png = json['png'] as String?;
    svg = json['svg'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['png'] = png;
    json['svg'] = svg;
    return json;
  }
}

class CoatOfArms {
  String? png;
  String? svg;

  CoatOfArms({
    this.png,
    this.svg,
  });

  CoatOfArms.fromJson(Map<String, dynamic> json) {
    png = json['png'] as String?;
    svg = json['svg'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['png'] = png;
    json['svg'] = svg;
    return json;
  }
}

class CapitalInfo {
  List<double>? latlng;

  CapitalInfo({
    this.latlng,
  });

  CapitalInfo.fromJson(Map<String, dynamic> json) {
    latlng =
        (json['latlng'] as List?)?.map((dynamic e) => e as double).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['latlng'] = latlng;
    return json;
  }
}

class PostalCode {
  String? format;
  String? regex;

  PostalCode({
    this.format,
    this.regex,
  });

  PostalCode.fromJson(Map<String, dynamic> json) {
    format = json['format'] as String?;
    regex = json['regex'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['format'] = format;
    json['regex'] = regex;
    return json;
  }
}
