.class public interface abstract Lnitro/phonestats/IActionService;
.super Ljava/lang/Object;
.source "IActionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/IActionService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getStatus()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract switchStatus(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
