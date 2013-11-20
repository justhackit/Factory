.class Lnitro/phonestats/view/MultiProgressBar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "MultiProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/view/MultiProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnitro/phonestats/view/MultiProgressBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field forthProgress:I

.field progress:I

.field secondaryProgress:I

.field thridProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 408
    new-instance v0, Lnitro/phonestats/view/MultiProgressBar$SavedState$1;

    invoke-direct {v0}, Lnitro/phonestats/view/MultiProgressBar$SavedState$1;-><init>()V

    .line 407
    sput-object v0, Lnitro/phonestats/view/MultiProgressBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 374
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 391
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnitro/phonestats/view/MultiProgressBar$SavedState;->progress:I

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnitro/phonestats/view/MultiProgressBar$SavedState;->secondaryProgress:I

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnitro/phonestats/view/MultiProgressBar$SavedState;->thridProgress:I

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnitro/phonestats/view/MultiProgressBar$SavedState;->forthProgress:I

    .line 396
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lnitro/phonestats/view/MultiProgressBar$SavedState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lnitro/phonestats/view/MultiProgressBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 384
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 385
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 400
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 401
    iget v0, p0, Lnitro/phonestats/view/MultiProgressBar$SavedState;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v0, p0, Lnitro/phonestats/view/MultiProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v0, p0, Lnitro/phonestats/view/MultiProgressBar$SavedState;->thridProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget v0, p0, Lnitro/phonestats/view/MultiProgressBar$SavedState;->forthProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    return-void
.end method
