.class public final enum Lcom/googlecode/androidannotations/api/rest/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/googlecode/androidannotations/api/rest/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/googlecode/androidannotations/api/rest/MediaType;

.field public static final enum ALL:Lcom/googlecode/androidannotations/api/rest/MediaType;

.field public static final enum APPLICATION_ATOM_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;

.field public static final enum APPLICATION_FORM_URLENCODED:Lcom/googlecode/androidannotations/api/rest/MediaType;

.field public static final enum APPLICATION_JSON:Lcom/googlecode/androidannotations/api/rest/MediaType;

.field public static final enum APPLICATION_OCTET_STREAM:Lcom/googlecode/androidannotations/api/rest/MediaType;

.field public static final enum APPLICATION_RSS_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;

.field public static final enum APPLICATION_WILDCARD_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;

.field public static final enum APPLICATION_XHTML_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;

.field public static final enum APPLICATION_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;

.field public static final enum IMAGE_GIF:Lcom/googlecode/androidannotations/api/rest/MediaType;

.field public static final enum IMAGE_JPEG:Lcom/googlecode/androidannotations/api/rest/MediaType;

.field public static final enum IMAGE_PNG:Lcom/googlecode/androidannotations/api/rest/MediaType;

.field public static final enum MULTIPART_FORM_DATA:Lcom/googlecode/androidannotations/api/rest/MediaType;

.field public static final enum TEXT_HTML:Lcom/googlecode/androidannotations/api/rest/MediaType;

.field public static final enum TEXT_PLAIN:Lcom/googlecode/androidannotations/api/rest/MediaType;

.field public static final enum TEXT_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3}, Lcom/googlecode/androidannotations/api/rest/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->ALL:Lcom/googlecode/androidannotations/api/rest/MediaType;

    new-instance v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    const-string v1, "APPLICATION_ATOM_XML"

    invoke-direct {v0, v1, v4}, Lcom/googlecode/androidannotations/api/rest/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->APPLICATION_ATOM_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;

    new-instance v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    const-string v1, "APPLICATION_RSS_XML"

    invoke-direct {v0, v1, v5}, Lcom/googlecode/androidannotations/api/rest/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->APPLICATION_RSS_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;

    new-instance v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    const-string v1, "APPLICATION_FORM_URLENCODED"

    invoke-direct {v0, v1, v6}, Lcom/googlecode/androidannotations/api/rest/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->APPLICATION_FORM_URLENCODED:Lcom/googlecode/androidannotations/api/rest/MediaType;

    .line 20
    new-instance v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    const-string v1, "APPLICATION_JSON"

    invoke-direct {v0, v1, v7}, Lcom/googlecode/androidannotations/api/rest/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->APPLICATION_JSON:Lcom/googlecode/androidannotations/api/rest/MediaType;

    new-instance v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    const-string v1, "APPLICATION_OCTET_STREAM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/googlecode/androidannotations/api/rest/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->APPLICATION_OCTET_STREAM:Lcom/googlecode/androidannotations/api/rest/MediaType;

    new-instance v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    const-string v1, "APPLICATION_XHTML_XML"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/googlecode/androidannotations/api/rest/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->APPLICATION_XHTML_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;

    new-instance v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    const-string v1, "IMAGE_GIF"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/googlecode/androidannotations/api/rest/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->IMAGE_GIF:Lcom/googlecode/androidannotations/api/rest/MediaType;

    .line 21
    new-instance v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    const-string v1, "IMAGE_JPEG"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/googlecode/androidannotations/api/rest/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->IMAGE_JPEG:Lcom/googlecode/androidannotations/api/rest/MediaType;

    new-instance v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    const-string v1, "IMAGE_PNG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/googlecode/androidannotations/api/rest/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->IMAGE_PNG:Lcom/googlecode/androidannotations/api/rest/MediaType;

    new-instance v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    const-string v1, "APPLICATION_XML"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/googlecode/androidannotations/api/rest/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->APPLICATION_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;

    new-instance v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    const-string v1, "APPLICATION_WILDCARD_XML"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/googlecode/androidannotations/api/rest/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->APPLICATION_WILDCARD_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;

    new-instance v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    const-string v1, "MULTIPART_FORM_DATA"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/googlecode/androidannotations/api/rest/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->MULTIPART_FORM_DATA:Lcom/googlecode/androidannotations/api/rest/MediaType;

    .line 22
    new-instance v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    const-string v1, "TEXT_HTML"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/googlecode/androidannotations/api/rest/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->TEXT_HTML:Lcom/googlecode/androidannotations/api/rest/MediaType;

    new-instance v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    const-string v1, "TEXT_PLAIN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/googlecode/androidannotations/api/rest/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->TEXT_PLAIN:Lcom/googlecode/androidannotations/api/rest/MediaType;

    new-instance v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    const-string v1, "TEXT_XML"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/googlecode/androidannotations/api/rest/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->TEXT_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;

    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/googlecode/androidannotations/api/rest/MediaType;

    sget-object v1, Lcom/googlecode/androidannotations/api/rest/MediaType;->ALL:Lcom/googlecode/androidannotations/api/rest/MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/googlecode/androidannotations/api/rest/MediaType;->APPLICATION_ATOM_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/googlecode/androidannotations/api/rest/MediaType;->APPLICATION_RSS_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/googlecode/androidannotations/api/rest/MediaType;->APPLICATION_FORM_URLENCODED:Lcom/googlecode/androidannotations/api/rest/MediaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/googlecode/androidannotations/api/rest/MediaType;->APPLICATION_JSON:Lcom/googlecode/androidannotations/api/rest/MediaType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/googlecode/androidannotations/api/rest/MediaType;->APPLICATION_OCTET_STREAM:Lcom/googlecode/androidannotations/api/rest/MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/googlecode/androidannotations/api/rest/MediaType;->APPLICATION_XHTML_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/googlecode/androidannotations/api/rest/MediaType;->IMAGE_GIF:Lcom/googlecode/androidannotations/api/rest/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/googlecode/androidannotations/api/rest/MediaType;->IMAGE_JPEG:Lcom/googlecode/androidannotations/api/rest/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/googlecode/androidannotations/api/rest/MediaType;->IMAGE_PNG:Lcom/googlecode/androidannotations/api/rest/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/googlecode/androidannotations/api/rest/MediaType;->APPLICATION_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/googlecode/androidannotations/api/rest/MediaType;->APPLICATION_WILDCARD_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/googlecode/androidannotations/api/rest/MediaType;->MULTIPART_FORM_DATA:Lcom/googlecode/androidannotations/api/rest/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/googlecode/androidannotations/api/rest/MediaType;->TEXT_HTML:Lcom/googlecode/androidannotations/api/rest/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/googlecode/androidannotations/api/rest/MediaType;->TEXT_PLAIN:Lcom/googlecode/androidannotations/api/rest/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/googlecode/androidannotations/api/rest/MediaType;->TEXT_XML:Lcom/googlecode/androidannotations/api/rest/MediaType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->$VALUES:[Lcom/googlecode/androidannotations/api/rest/MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/googlecode/androidannotations/api/rest/MediaType;
    .locals 1
    .parameter "name"

    .prologue
    .line 18
    const-class v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/googlecode/androidannotations/api/rest/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/googlecode/androidannotations/api/rest/MediaType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/googlecode/androidannotations/api/rest/MediaType;->$VALUES:[Lcom/googlecode/androidannotations/api/rest/MediaType;

    invoke-virtual {v0}, [Lcom/googlecode/androidannotations/api/rest/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/googlecode/androidannotations/api/rest/MediaType;

    return-object v0
.end method
