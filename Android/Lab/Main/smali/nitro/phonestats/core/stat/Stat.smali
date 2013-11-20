.class public abstract Lnitro/phonestats/core/stat/Stat;
.super Ljava/lang/Object;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/core/stat/Stat$Timespan;,
        Lnitro/phonestats/core/stat/Stat$ViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected ctx:Landroid/content/Context;

.field private mCategoryResource:I

.field private mDescriptionResource:I

.field private mIconResource:I

.field private mKey:Ljava/lang/String;

.field private mNameResource:I

.field private mTimespan:Lnitro/phonestats/core/stat/Stat$Timespan;

.field private mTopSubStats:Lnitro/phonestats/core/helper/NumberCountMap;

.field protected mUnitResource:I

.field protected mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private opensView:Lnitro/phonestats/core/stat/Stat$ViewType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 26
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lnitro/phonestats/core/stat/Stat$ViewType;->OVERVIEW:Lnitro/phonestats/core/stat/Stat$ViewType;

    iput-object v0, p0, Lnitro/phonestats/core/stat/Stat;->opensView:Lnitro/phonestats/core/stat/Stat$ViewType;

    .line 28
    iput-object p1, p0, Lnitro/phonestats/core/stat/Stat;->ctx:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public abstract buffer()V
.end method

.method public getCategoryResource()I
    .locals 1

    .prologue
    .line 110
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iget v0, p0, Lnitro/phonestats/core/stat/Stat;->mCategoryResource:I

    return v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 62
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lnitro/phonestats/core/stat/Stat;->mDescriptionResource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionResource()I
    .locals 1

    .prologue
    .line 59
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iget v0, p0, Lnitro/phonestats/core/stat/Stat;->mDescriptionResource:I

    return v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 80
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lnitro/phonestats/core/stat/Stat;->mIconResource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iget v0, p0, Lnitro/phonestats/core/stat/Stat;->mIconResource:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iget-object v0, p0, Lnitro/phonestats/core/stat/Stat;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lnitro/phonestats/core/stat/Stat;->mNameResource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameResource()I
    .locals 1

    .prologue
    .line 50
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iget v0, p0, Lnitro/phonestats/core/stat/Stat;->mNameResource:I

    return v0
.end method

.method public getOpensView()Lnitro/phonestats/core/stat/Stat$ViewType;
    .locals 1

    .prologue
    .line 118
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iget-object v0, p0, Lnitro/phonestats/core/stat/Stat;->opensView:Lnitro/phonestats/core/stat/Stat$ViewType;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iget-object v0, p0, Lnitro/phonestats/core/stat/Stat;->mValue:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimespan()Lnitro/phonestats/core/stat/Stat$Timespan;
    .locals 1

    .prologue
    .line 96
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iget-object v0, p0, Lnitro/phonestats/core/stat/Stat;->mTimespan:Lnitro/phonestats/core/stat/Stat$Timespan;

    return-object v0
.end method

.method public getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;
    .locals 1

    .prologue
    .line 86
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iget-object v0, p0, Lnitro/phonestats/core/stat/Stat;->mTopSubStats:Lnitro/phonestats/core/helper/NumberCountMap;

    return-object v0
.end method

.method public getUnit(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 71
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lnitro/phonestats/core/stat/Stat;->mUnitResource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitResource()I
    .locals 1

    .prologue
    .line 68
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iget v0, p0, Lnitro/phonestats/core/stat/Stat;->mUnitResource:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iget-object v0, p0, Lnitro/phonestats/core/stat/Stat;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public isInFavories()Z
    .locals 2

    .prologue
    .line 104
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iget-object v0, p0, Lnitro/phonestats/core/stat/Stat;->ctx:Landroid/content/Context;

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/Stat;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnitro/phonestats/settings/core/Settings;->isInFavorites(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract loadBuffered()V
.end method

.method public abstract reset()V
.end method

.method public setCategoryResource(I)V
    .locals 0
    .parameter "mCategoryResource"

    .prologue
    .line 107
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iput p1, p0, Lnitro/phonestats/core/stat/Stat;->mCategoryResource:I

    .line 108
    return-void
.end method

.method public setDescriptionResource(I)V
    .locals 0
    .parameter "descriptionResource"

    .prologue
    .line 65
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iput p1, p0, Lnitro/phonestats/core/stat/Stat;->mDescriptionResource:I

    .line 66
    return-void
.end method

.method public setIconResource(I)V
    .locals 0
    .parameter "iconResource"

    .prologue
    .line 83
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iput p1, p0, Lnitro/phonestats/core/stat/Stat;->mIconResource:I

    .line 84
    return-void
.end method

.method public setInFavories(Z)V
    .locals 2
    .parameter "mInFavories"

    .prologue
    .line 101
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iget-object v0, p0, Lnitro/phonestats/core/stat/Stat;->ctx:Landroid/content/Context;

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/Stat;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lnitro/phonestats/settings/core/Settings;->setInFavorites(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 102
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 36
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iput-object p1, p0, Lnitro/phonestats/core/stat/Stat;->mKey:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setNameResource(I)V
    .locals 0
    .parameter "nameResource"

    .prologue
    .line 56
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iput p1, p0, Lnitro/phonestats/core/stat/Stat;->mNameResource:I

    .line 57
    return-void
.end method

.method public setOpensView(Lnitro/phonestats/core/stat/Stat$ViewType;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    .local p1, opensView:Lnitro/phonestats/core/stat/Stat$ViewType;,"Lnitro/phonestats/core/stat/Stat$ViewType;"
    iput-object p1, p0, Lnitro/phonestats/core/stat/Stat;->opensView:Lnitro/phonestats/core/stat/Stat$ViewType;

    .line 114
    return-void
.end method

.method public setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    .local p1, timespan:Lnitro/phonestats/core/stat/Stat$Timespan;,"Lnitro/phonestats/core/stat/Stat$Timespan;"
    iput-object p1, p0, Lnitro/phonestats/core/stat/Stat;->mTimespan:Lnitro/phonestats/core/stat/Stat$Timespan;

    .line 94
    return-void
.end method

.method public setTopSubStats(Lnitro/phonestats/core/helper/NumberCountMap;)V
    .locals 0
    .parameter "topSubStats"

    .prologue
    .line 89
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iput-object p1, p0, Lnitro/phonestats/core/stat/Stat;->mTopSubStats:Lnitro/phonestats/core/helper/NumberCountMap;

    .line 90
    return-void
.end method

.method public setUnitResource(I)V
    .locals 0
    .parameter "unitResource"

    .prologue
    .line 74
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    iput p1, p0, Lnitro/phonestats/core/stat/Stat;->mUnitResource:I

    .line 75
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lnitro/phonestats/core/stat/Stat;->mValue:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4
    .parameter "ctx"
    .parameter "unitAdded"

    .prologue
    .line 124
    .local p0, this:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<TT;>;"
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/Stat;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 125
    .local v1, value:Ljava/lang/Object;,"TT;"
    if-eqz v1, :cond_1

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/Stat;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, s:Ljava/lang/String;
    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnitro/phonestats/core/stat/Stat;->mUnitResource:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "NULL"

    goto :goto_0
.end method
