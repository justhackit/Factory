.class public interface abstract Lnitro/phonestats/key/IDroidStatsKey;
.super Ljava/lang/Object;
.source "IDroidStatsKey.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/key/IDroidStatsKey$Stub;
    }
.end annotation


# virtual methods
.method public abstract getKeySource()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getKeyVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
