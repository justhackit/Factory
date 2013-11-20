.class public Lcom/commonsware/cwac/parcel/ParcelHelper$Cache;
.super Ljava/util/LinkedHashMap;
.source "ParcelHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/cwac/parcel/ParcelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/cwac/parcel/ParcelHelper;


# direct methods
.method public constructor <init>(Lcom/commonsware/cwac/parcel/ParcelHelper;)V
    .locals 3
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/commonsware/cwac/parcel/ParcelHelper$Cache;->this$0:Lcom/commonsware/cwac/parcel/ParcelHelper;

    .line 151
    const/16 v0, 0x65

    const v1, 0x3f8ccccd

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 152
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter "eldest"

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/commonsware/cwac/parcel/ParcelHelper$Cache;->size()I

    move-result v0

    const/16 v1, 0x65

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
