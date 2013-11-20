.class public Lcom/commonsware/cwac/parcel/ParcelHelper;
.super Ljava/lang/Object;
.source "ParcelHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/commonsware/cwac/parcel/ParcelHelper$Cache;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x65


# instance fields
.field private arrr:Ljava/lang/Class;

.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "id"
    .parameter "ctxt"

    .prologue
    const/16 v3, 0x5f

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/commonsware/cwac/parcel/ParcelHelper;->id:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/commonsware/cwac/parcel/ParcelHelper;->arrr:Ljava/lang/Class;

    .line 29
    iput-object v1, p0, Lcom/commonsware/cwac/parcel/ParcelHelper;->cache:Ljava/util/Map;

    .line 32
    const/16 v1, 0x2e

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/commonsware/cwac/parcel/ParcelHelper;->id:Ljava/lang/String;

    .line 35
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".R"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/commonsware/cwac/parcel/ParcelHelper;->arrr:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    new-instance v1, Lcom/commonsware/cwac/parcel/ParcelHelper$Cache;

    invoke-direct {v1, p0}, Lcom/commonsware/cwac/parcel/ParcelHelper$Cache;-><init>(Lcom/commonsware/cwac/parcel/ParcelHelper;)V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/commonsware/cwac/parcel/ParcelHelper;->cache:Ljava/util/Map;

    .line 42
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, t:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception finding R class"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getResourceClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .parameter "defType"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/commonsware/cwac/parcel/ParcelHelper;->arrr:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 146
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 140
    :cond_1
    aget-object v0, v2, v1

    .line 141
    .local v0, clazz:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDrawableId(Ljava/lang/String;)I
    .locals 2
    .parameter "drawable"

    .prologue
    .line 90
    const-string v0, "drawable"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "name"
    .parameter "defType"

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 10
    .parameter "name"
    .parameter "defType"
    .parameter "mungeName"

    .prologue
    .line 99
    const/4 v5, -0x1

    .line 100
    .local v5, result:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .local v2, cacheKey:Ljava/lang/StringBuilder;
    const/16 v7, 0x7c

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v7, p0, Lcom/commonsware/cwac/parcel/ParcelHelper;->cache:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 107
    .local v1, cacheHit:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 136
    :goto_0
    return v7

    .line 111
    :cond_0
    iget-object v7, p0, Lcom/commonsware/cwac/parcel/ParcelHelper;->id:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz p3, :cond_1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/commonsware/cwac/parcel/ParcelHelper;->id:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v7, 0x5f

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    .end local v0           #buf:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getResourceClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 123
    .local v3, clazz:Ljava/lang/Class;
    if-eqz v3, :cond_2

    .line 124
    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 126
    .local v4, fld:Ljava/lang/reflect/Field;
    if-eqz v4, :cond_2

    .line 127
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 128
    iget-object v7, p0, Lcom/commonsware/cwac/parcel/ParcelHelper;->cache:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #fld:Ljava/lang/reflect/Field;
    :cond_2
    move v7, v5

    .line 136
    goto :goto_0

    .line 132
    .end local v3           #clazz:Ljava/lang/Class;
    :catch_0
    move-exception v6

    .line 133
    .local v6, t:Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Exception finding resource identifier"

    invoke-direct {v7, v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public getItemId(Ljava/lang/String;)I
    .locals 2
    .parameter "item"

    .prologue
    .line 82
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .locals 2
    .parameter "layout"

    .prologue
    .line 78
    const-string v0, "layout"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getMenuId(Ljava/lang/String;)I
    .locals 2
    .parameter "menu"

    .prologue
    .line 86
    const-string v0, "menu"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getStyleableArray(Ljava/lang/String;)[I
    .locals 8
    .parameter "name"

    .prologue
    .line 46
    :try_start_0
    const-string v6, "styleable"

    invoke-direct {p0, v6}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getResourceClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, clazz:Ljava/lang/Class;
    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 51
    .local v1, fld:Ljava/lang/reflect/Field;
    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 54
    .local v3, o:Ljava/lang/Object;
    instance-of v6, v3, [I

    if-eqz v6, :cond_1

    .line 55
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    new-array v4, v6, [I

    .line 57
    .local v4, result:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    if-lt v2, v6, :cond_0

    .line 70
    .end local v1           #fld:Ljava/lang/reflect/Field;
    .end local v2           #i:I
    .end local v3           #o:Ljava/lang/Object;
    .end local v4           #result:[I
    :goto_1
    return-object v4

    .line 58
    .restart local v1       #fld:Ljava/lang/reflect/Field;
    .restart local v2       #i:I
    .restart local v3       #o:Ljava/lang/Object;
    .restart local v4       #result:[I
    :cond_0
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v6

    aput v6, v4, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v1           #fld:Ljava/lang/reflect/Field;
    .end local v2           #i:I
    .end local v3           #o:Ljava/lang/Object;
    .end local v4           #result:[I
    :catch_0
    move-exception v5

    .line 67
    .local v5, t:Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Exception finding styleable"

    invoke-direct {v6, v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 70
    .end local v5           #t:Ljava/lang/Throwable;
    .restart local v0       #clazz:Ljava/lang/Class;
    :cond_1
    const/4 v6, 0x0

    new-array v4, v6, [I

    goto :goto_1
.end method

.method public getStyleableId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "component"
    .parameter "attr"

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "styleable"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method
