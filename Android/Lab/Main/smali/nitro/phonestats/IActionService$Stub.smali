.class public abstract Lnitro/phonestats/IActionService$Stub;
.super Landroid/os/Binder;
.source "IActionService.java"

# interfaces
.implements Lnitro/phonestats/IActionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/IActionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/IActionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nitro.phonestats.IActionService"

.field static final TRANSACTION_getStatus:I = 0x1

.field static final TRANSACTION_switchStatus:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "nitro.phonestats.IActionService"

    invoke-virtual {p0, p0, v0}, Lnitro/phonestats/IActionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnitro/phonestats/IActionService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "nitro.phonestats.IActionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnitro/phonestats/IActionService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lnitro/phonestats/IActionService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lnitro/phonestats/IActionService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lnitro/phonestats/IActionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "nitro.phonestats.IActionService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "nitro.phonestats.IActionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lnitro/phonestats/IActionService$Stub;->getStatus()Landroid/os/Bundle;

    move-result-object v1

    .line 49
    .local v1, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v1           #_result:Landroid/os/Bundle;
    :sswitch_2
    const-string v3, "nitro.phonestats.IActionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 69
    .local v0, _arg0:Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v0}, Lnitro/phonestats/IActionService$Stub;->switchStatus(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 70
    .restart local v1       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v1, :cond_2

    .line 72
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:Landroid/os/Bundle;
    .end local v1           #_result:Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_1

    .line 76
    .restart local v1       #_result:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
