import Foundation

struct Craft: Identifiable {
    let id = UUID()
    let name: String
    let englishName: String
    let imageName: String
    let description: String
}

let crafts: [Craft] = [
    Craft(
        name: "Shingzo",
        englishName: "Carpentry",
        imageName: "Shingzo",
        description: "Shingzo is the traditional Bhutanese art of carpentry. It involves working with wood to construct buildings, furniture, household objects, and architectural elements, often incorporating distinctive Bhutanese designs."
    ),
    Craft(
        name: "Dozo",
        englishName: "Masonry",
        imageName: "Dozo",
        description: "Dozo is the traditional art of masonry. Craftspeople work with stone and other materials to construct walls, buildings, temples, fortresses, and other structures using traditional Bhutanese techniques."
    ),
    Craft(
        name: "Parzo",
        englishName: "Carving",
        imageName: "Parzo",
        description: "Parzo is the art of carving. Bhutanese artisans traditionally carve wood, stone, and other materials into decorative objects, religious works, architectural details, and printing blocks."
    ),
    Craft(
        name: "Lhazo",
        englishName: "Painting",
        imageName: "Lhazo",
        description: "Lhazo is the traditional Bhutanese art of painting. It includes religious and decorative paintings found on monasteries, temples, homes, furniture, and other objects."
    ),
    Craft(
        name: "Jinzo",
        englishName: "Sculpting",
        imageName: "Jinzo",
        description: "Jinzo is the traditional art of sculpture. Artisans create religious figures and decorative forms using materials such as clay and other traditional substances."
    ),
    Craft(
        name: "Lugzo",
        englishName: "Bronze-casting",
        imageName: "Lugzo",
        description: "Lugzo is the traditional craft of bronze casting. It involves producing religious statues, ritual objects, utensils, and decorative items by casting molten metal into carefully prepared moulds."
    ),
    Craft(
        name: "Garzo",
        englishName: "Blacksmithing",
        imageName: "Garzo",
        description: "Garzo is the traditional art of blacksmithing. Craftspeople heat and shape metal to make tools, agricultural implements, household objects, weapons, and other useful items."
    ),
    Craft(
        name: "Troeko",
        englishName: "Ornament-making",
        imageName: "Troeko",
        description: "Troeko is the traditional art of making ornaments and jewellery. Artisans create decorative pieces using metals, stones, and other materials, often reflecting Bhutanese cultural traditions."
    ),
    Craft(
        name: "Tsharzo",
        englishName: "Cane and bamboo work",
        imageName: "Tsharzo",
        description: "Tsharzo is the traditional craft of working with cane and bamboo. These natural materials are woven and shaped into baskets, containers, mats, furniture, and other everyday objects."
    ),
    Craft(
        name: "Thagzo",
        englishName: "Weaving",
        imageName: "Thagzo",
        description: "Thagzo is the traditional Bhutanese art of weaving. Weavers produce textiles with intricate patterns and colours, including traditional fabrics used for clothing, ceremonial garments, and household items."
    ),
    Craft(
        name: "Tshemzo",
        englishName: "Tailoring, embroidery & appliqué",
        imageName: "Tshemzo",
        description: "Tshemzo includes traditional tailoring, embroidery, and appliqué. Artisans cut, sew, decorate, and embellish textiles to create traditional Bhutanese clothing and other textile products."
    ),
    Craft(
        name: "Shagzo",
        englishName: "Woodturning",
        imageName: "Shagzo",
        description: "Shagzo is the traditional art of woodturning. Artisans shape pieces of wood, traditionally using a turning mechanism, to produce bowls, cups, plates, containers, and other objects."
    ),
    Craft(
        name: "Deh-sho",
        englishName: "Paper-making",
        imageName: "Deh-sho",
        description: "Deh-sho is the traditional Bhutanese craft of papermaking. Handmade paper is produced from natural plant fibres and has traditionally been used for religious texts, manuscripts, wrapping, and other purposes."
    )
]
