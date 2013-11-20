.class public final Lnitro/phonestats/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final QuickInfo:[I = null

.field public static final QuickInfo_text:I = 0x0

.field public static final ValueSeekBar:[I = null

.field public static final ValueSeekBar_maxValue:I = 0x1

.field public static final ValueSeekBar_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1235
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1236
    const/high16 v2, 0x7f01

    aput v2, v0, v1

    .line 1235
    sput-object v0, Lnitro/phonestats/R$styleable;->QuickInfo:[I

    .line 1261
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnitro/phonestats/R$styleable;->ValueSeekBar:[I

    .line 1224
    return-void

    .line 1261
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
