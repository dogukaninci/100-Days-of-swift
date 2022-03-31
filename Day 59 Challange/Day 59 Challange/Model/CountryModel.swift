// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - WelcomeElement
struct WelcomeElement: Codable {
    let name: Name
    let tld: [String]?
    let cca2: String
    let ccn3: String?
    let cca3: String
    let cioc: String?
    let independent: Bool?
    let status: Status
    let unMember: Bool
    let currencies: Currencies?
    let idd: Idd
    let capital: [String]?
    let altSpellings: [String]
    let region: Region
    let subregion: String?
    let languages: [String: String]?
    let translations: [String: Translation]
    let latlng: [Double]
    let landlocked: Bool
    let borders: [String]?
    let area: Double
    let demonyms: Demonyms?
    let flag: String?
    let maps: Maps
    let population: Int
    let gini: [String: Double]?
    let fifa: String?
    let car: Car
    let timezones: [String]
    let continents: [Continent]
    let flags, coatOfArms: CoatOfArms
    let startOfWeek: StartOfWeek
    let capitalInfo: CapitalInfo
    let postalCode: PostalCode?
}

// MARK: - CapitalInfo
struct CapitalInfo: Codable {
    let latlng: [Double]?
}

// MARK: - Car
struct Car: Codable {
    let signs: [String]?
    let side: Side
}

enum Side: String, Codable {
    case sideLeft = "left"
    case sideRight = "right"
}

// MARK: - CoatOfArms
struct CoatOfArms: Codable {
    let png: String?
    let svg: String?
}

enum Continent: String, Codable {
    case africa = "Africa"
    case antarctica = "Antarctica"
    case asia = "Asia"
    case europe = "Europe"
    case northAmerica = "North America"
    case oceania = "Oceania"
    case southAmerica = "South America"
}

// MARK: - Currencies
struct Currencies: Codable {
    let uyu, pyg, gmd, djf: Aed?
    let eur, usd, gel, bzd: Aed?
    let mur, lbp, sar, brl: Aed?
    let ugx, qar, mnt, clp: Aed?
    let lrd, aud, xcd, twd: Aed?
    let ars, xof, dkk, fok: Aed?
    let mad, mru, uah, cny: Aed?
    let lsl, zar, cdf, rub: Aed?
    let bdt, ang, gtq, ils: Aed?
    let gyd, kyd, hrk, isk: Aed?
    let nad, gip, omr, kwd: Aed?
    let gbp, hnl, shp, khr: Aed?
    let mkd, irr, pab, ckd: Aed?
    let nzd, bif, ttd, kmf: Aed?
    let ngn, pln, xpf, etb: Aed?
    let azn, npr, bbd, jep: Aed?
    let inr, kgs, ssp, iqd: Aed?
    let cuc, cup, btn, bsd: Aed?
    let nok, kes, sek, xaf: Aed?
    let mop, ggp, rwf, syp: Aed?
    let cad, dzd, imp, bwp: Aed?
    let kzt, ves: Aed?
    let sdg: BAM?
    let sbd, jmd, afn, rsd: Aed?
    let tjs, top, kid, ern: Aed?
    let htg, vuv: Aed?
    let bam: BAM?
    let wst, bob, mga, stn: Aed?
    let bhd, pen, srd, thb: Aed?
    let tvd, kpw, yer, amd: Aed?
    let pkr, mwk, php, czk: Aed?
    let mmk, ron, dop, ghs: Aed?
    let currenciesTRY, egp, mzn, huf: Aed?
    let aed, all, fjd, mdl: Aed?
    let byn, lkr, bmd, nio: Aed?
    let sos, jod, tmt, crc: Aed?
    let vnd, szl, zmw, chf: Aed?
    let uzs, awg, jpy, cve: Aed?
    let hkd, bgn, lak, krw: Aed?
    let tnd, zwl, mvr, sgd: Aed?
    let aoa, myr, gnf, lyd: Aed?
    let idr, scr, bnd, mxn: Aed?
    let sll, cop, pgk, fkp: Aed?
    let tzs: Aed?

    enum CodingKeys: String, CodingKey {
        case uyu = "UYU"
        case pyg = "PYG"
        case gmd = "GMD"
        case djf = "DJF"
        case eur = "EUR"
        case usd = "USD"
        case gel = "GEL"
        case bzd = "BZD"
        case mur = "MUR"
        case lbp = "LBP"
        case sar = "SAR"
        case brl = "BRL"
        case ugx = "UGX"
        case qar = "QAR"
        case mnt = "MNT"
        case clp = "CLP"
        case lrd = "LRD"
        case aud = "AUD"
        case xcd = "XCD"
        case twd = "TWD"
        case ars = "ARS"
        case xof = "XOF"
        case dkk = "DKK"
        case fok = "FOK"
        case mad = "MAD"
        case mru = "MRU"
        case uah = "UAH"
        case cny = "CNY"
        case lsl = "LSL"
        case zar = "ZAR"
        case cdf = "CDF"
        case rub = "RUB"
        case bdt = "BDT"
        case ang = "ANG"
        case gtq = "GTQ"
        case ils = "ILS"
        case gyd = "GYD"
        case kyd = "KYD"
        case hrk = "HRK"
        case isk = "ISK"
        case nad = "NAD"
        case gip = "GIP"
        case omr = "OMR"
        case kwd = "KWD"
        case gbp = "GBP"
        case hnl = "HNL"
        case shp = "SHP"
        case khr = "KHR"
        case mkd = "MKD"
        case irr = "IRR"
        case pab = "PAB"
        case ckd = "CKD"
        case nzd = "NZD"
        case bif = "BIF"
        case ttd = "TTD"
        case kmf = "KMF"
        case ngn = "NGN"
        case pln = "PLN"
        case xpf = "XPF"
        case etb = "ETB"
        case azn = "AZN"
        case npr = "NPR"
        case bbd = "BBD"
        case jep = "JEP"
        case inr = "INR"
        case kgs = "KGS"
        case ssp = "SSP"
        case iqd = "IQD"
        case cuc = "CUC"
        case cup = "CUP"
        case btn = "BTN"
        case bsd = "BSD"
        case nok = "NOK"
        case kes = "KES"
        case sek = "SEK"
        case xaf = "XAF"
        case mop = "MOP"
        case ggp = "GGP"
        case rwf = "RWF"
        case syp = "SYP"
        case cad = "CAD"
        case dzd = "DZD"
        case imp = "IMP"
        case bwp = "BWP"
        case kzt = "KZT"
        case ves = "VES"
        case sdg = "SDG"
        case sbd = "SBD"
        case jmd = "JMD"
        case afn = "AFN"
        case rsd = "RSD"
        case tjs = "TJS"
        case top = "TOP"
        case kid = "KID"
        case ern = "ERN"
        case htg = "HTG"
        case vuv = "VUV"
        case bam = "BAM"
        case wst = "WST"
        case bob = "BOB"
        case mga = "MGA"
        case stn = "STN"
        case bhd = "BHD"
        case pen = "PEN"
        case srd = "SRD"
        case thb = "THB"
        case tvd = "TVD"
        case kpw = "KPW"
        case yer = "YER"
        case amd = "AMD"
        case pkr = "PKR"
        case mwk = "MWK"
        case php = "PHP"
        case czk = "CZK"
        case mmk = "MMK"
        case ron = "RON"
        case dop = "DOP"
        case ghs = "GHS"
        case currenciesTRY = "TRY"
        case egp = "EGP"
        case mzn = "MZN"
        case huf = "HUF"
        case aed = "AED"
        case all = "ALL"
        case fjd = "FJD"
        case mdl = "MDL"
        case byn = "BYN"
        case lkr = "LKR"
        case bmd = "BMD"
        case nio = "NIO"
        case sos = "SOS"
        case jod = "JOD"
        case tmt = "TMT"
        case crc = "CRC"
        case vnd = "VND"
        case szl = "SZL"
        case zmw = "ZMW"
        case chf = "CHF"
        case uzs = "UZS"
        case awg = "AWG"
        case jpy = "JPY"
        case cve = "CVE"
        case hkd = "HKD"
        case bgn = "BGN"
        case lak = "LAK"
        case krw = "KRW"
        case tnd = "TND"
        case zwl = "ZWL"
        case mvr = "MVR"
        case sgd = "SGD"
        case aoa = "AOA"
        case myr = "MYR"
        case gnf = "GNF"
        case lyd = "LYD"
        case idr = "IDR"
        case scr = "SCR"
        case bnd = "BND"
        case mxn = "MXN"
        case sll = "SLL"
        case cop = "COP"
        case pgk = "PGK"
        case fkp = "FKP"
        case tzs = "TZS"
    }
}

// MARK: - Aed
struct Aed: Codable {
    let name, symbol: String
}

// MARK: - BAM
struct BAM: Codable {
    let name: String
}

// MARK: - Demonyms
struct Demonyms: Codable {
    let eng: Eng
    let fra: Eng?
}

// MARK: - Eng
struct Eng: Codable {
    let f, m: String
}

// MARK: - Idd
struct Idd: Codable {
    let root: String?
    let suffixes: [String]?
}

// MARK: - Maps
struct Maps: Codable {
    let googleMaps, openStreetMaps: String
}

// MARK: - Name
struct Name: Codable {
    let common, official: String
    let nativeName: [String: Translation]?
}

// MARK: - Translation
struct Translation: Codable {
    let official, common: String
}

// MARK: - PostalCode
struct PostalCode: Codable {
    let format: String
    let regex: String?
}

enum Region: String, Codable {
    case africa = "Africa"
    case americas = "Americas"
    case antarctic = "Antarctic"
    case asia = "Asia"
    case europe = "Europe"
    case oceania = "Oceania"
}

enum StartOfWeek: String, Codable {
    case monday = "monday"
    case sunday = "sunday"
    case turday = "turday"
}

enum Status: String, Codable {
    case officiallyAssigned = "officially-assigned"
    case userAssigned = "user-assigned"
}

typealias Welcome = [WelcomeElement]
