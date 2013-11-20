.class Lnitro/phonestats/view/adapters/TopStatsAdapter$1;
.super Ljava/lang/Object;
.source "TopStatsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/adapters/TopStatsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

.field private final synthetic val$nameText:Landroid/widget/TextView;

.field private final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/TopStatsAdapter;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iput-object p2, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1;->val$phone:Ljava/lang/String;

    iput-object p3, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1;->val$nameText:Landroid/widget/TextView;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 136
    iget-object v3, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1;->val$phone:Ljava/lang/String;

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    iget-object v3, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iget-object v3, v3, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, phoneName:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iget-object v3, v3, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mTmpData:Ljava/util/HashMap;

    iget-object v4, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1;->val$phone:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    move-object v1, v2

    .line 150
    .local v1, nameAndPhoneType:Ljava/lang/String;
    iget-object v3, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1;->val$nameText:Landroid/widget/TextView;

    new-instance v4, Lnitro/phonestats/view/adapters/TopStatsAdapter$1$1;

    iget-object v5, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1;->val$nameText:Landroid/widget/TextView;

    invoke-direct {v4, p0, v5, v1}, Lnitro/phonestats/view/adapters/TopStatsAdapter$1$1;-><init>(Lnitro/phonestats/view/adapters/TopStatsAdapter$1;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void

    .line 138
    .end local v1           #nameAndPhoneType:Ljava/lang/String;
    .end local v2           #phoneName:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1;->val$phone:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1;->val$phone:Ljava/lang/String;

    const-string v4, "-2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    :cond_1
    iget-object v3, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iget-object v3, v3, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #phoneName:Ljava/lang/String;
    goto :goto_0

    .line 142
    .end local v2           #phoneName:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1;->val$phone:Ljava/lang/String;

    iget-object v4, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iget-object v4, v4, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lnitro/phonestats/core/wrapper/ContactsWrapper;->getContactDetails(Ljava/lang/String;Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 143
    .local v0, contactData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "name"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v3, "type"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #phoneName:Ljava/lang/String;
    goto :goto_0

    .line 146
    .end local v2           #phoneName:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$1;->val$phone:Ljava/lang/String;

    .restart local v2       #phoneName:Ljava/lang/String;
    goto :goto_0
.end method
