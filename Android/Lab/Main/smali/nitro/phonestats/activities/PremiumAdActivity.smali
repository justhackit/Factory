.class public Lnitro/phonestats/activities/PremiumAdActivity;
.super Landroid/app/Activity;
.source "PremiumAdActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 17
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lnitro/phonestats/activities/PremiumAdActivity;->requestWindowFeature(I)Z

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v2, 0x7f03001b

    invoke-virtual {p0, v2}, Lnitro/phonestats/activities/PremiumAdActivity;->setContentView(I)V

    .line 22
    const v2, 0x7f0a00a8

    invoke-virtual {p0, v2}, Lnitro/phonestats/activities/PremiumAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 23
    .local v0, button:Landroid/widget/Button;
    new-instance v2, Lnitro/phonestats/activities/PremiumAdActivity$1;

    invoke-direct {v2, p0}, Lnitro/phonestats/activities/PremiumAdActivity$1;-><init>(Lnitro/phonestats/activities/PremiumAdActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v2, 0x7f0a00a9

    invoke-virtual {p0, v2}, Lnitro/phonestats/activities/PremiumAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 36
    .local v1, button4:Landroid/widget/Button;
    new-instance v2, Lnitro/phonestats/activities/PremiumAdActivity$2;

    invoke-direct {v2, p0}, Lnitro/phonestats/activities/PremiumAdActivity$2;-><init>(Lnitro/phonestats/activities/PremiumAdActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method
