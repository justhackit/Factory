.class Lnitro/phonestats/activities/AppList$7;
.super Ljava/lang/Object;
.source "AppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/AppList;->createAppStats(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/activities/AppList;

.field private final synthetic val$showAlertDialog:Z


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/AppList;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/AppList$7;->this$0:Lnitro/phonestats/activities/AppList;

    iput-boolean p2, p0, Lnitro/phonestats/activities/AppList$7;->val$showAlertDialog:Z

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/activities/AppList$7;)Lnitro/phonestats/activities/AppList;
    .locals 1
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lnitro/phonestats/activities/AppList$7;->this$0:Lnitro/phonestats/activities/AppList;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 254
    iget-object v1, p0, Lnitro/phonestats/activities/AppList$7;->this$0:Lnitro/phonestats/activities/AppList;

    iget-object v1, v1, Lnitro/phonestats/activities/AppList;->adapter_no_filter:Lnitro/phonestats/view/adapters/AppStatsAdapter;

    invoke-virtual {v1}, Lnitro/phonestats/view/adapters/AppStatsAdapter;->notifyDataSetChanged()V

    .line 255
    iget-object v1, p0, Lnitro/phonestats/activities/AppList$7;->this$0:Lnitro/phonestats/activities/AppList;

    #getter for: Lnitro/phonestats/activities/AppList;->mStatList:Landroid/widget/ListView;
    invoke-static {v1}, Lnitro/phonestats/activities/AppList;->access$0(Lnitro/phonestats/activities/AppList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 256
    iget-object v1, p0, Lnitro/phonestats/activities/AppList$7;->this$0:Lnitro/phonestats/activities/AppList;

    #getter for: Lnitro/phonestats/activities/AppList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lnitro/phonestats/activities/AppList;->access$9(Lnitro/phonestats/activities/AppList;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 258
    iget-boolean v1, p0, Lnitro/phonestats/activities/AppList$7;->val$showAlertDialog:Z

    if-eqz v1, :cond_0

    .line 259
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnitro/phonestats/activities/AppList$7;->this$0:Lnitro/phonestats/activities/AppList;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 260
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 261
    const v2, 0x7f070044

    .line 260
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 262
    const v2, 0x1080027

    .line 261
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 262
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700b4

    .line 263
    new-instance v3, Lnitro/phonestats/activities/AppList$7$1;

    invoke-direct {v3, p0}, Lnitro/phonestats/activities/AppList$7$1;-><init>(Lnitro/phonestats/activities/AppList$7;)V

    .line 262
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 268
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 270
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method
