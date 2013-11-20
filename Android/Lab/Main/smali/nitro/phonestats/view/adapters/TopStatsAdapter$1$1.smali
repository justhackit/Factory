.class Lnitro/phonestats/view/adapters/TopStatsAdapter$1$1;
.super Ljava/lang/Object;
.source "TopStatsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/adapters/TopStatsAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/view/adapters/TopStatsAdapter$1;

.field private final synthetic val$nameAndPhoneType:Ljava/lang/String;

.field private final synthetic val$nameText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/TopStatsAdapter$1;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1$1;->this$1:Lnitro/phonestats/view/adapters/TopStatsAdapter$1;

    iput-object p2, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1$1;->val$nameText:Landroid/widget/TextView;

    iput-object p3, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1$1;->val$nameAndPhoneType:Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1$1;->val$nameText:Landroid/widget/TextView;

    iget-object v1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1$1;->val$nameAndPhoneType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method
