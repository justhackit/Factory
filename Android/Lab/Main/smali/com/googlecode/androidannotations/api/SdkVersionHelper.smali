.class public Lcom/googlecode/androidannotations/api/SdkVersionHelper;
.super Ljava/lang/Object;
.source "SdkVersionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/androidannotations/api/SdkVersionHelper$HelperInternal;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getSdkInt()I
    .locals 2

    .prologue
    .line 24
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x3

    .line 27
    :goto_0
    return v0

    :cond_0
    #calls: Lcom/googlecode/androidannotations/api/SdkVersionHelper$HelperInternal;->getSdkIntInternal()I
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper$HelperInternal;->access$000()I

    move-result v0

    goto :goto_0
.end method
