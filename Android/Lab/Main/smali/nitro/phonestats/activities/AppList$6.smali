.class Lnitro/phonestats/activities/AppList$6;
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


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/AppList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/AppList$6;->this$0:Lnitro/phonestats/activities/AppList;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lnitro/phonestats/activities/AppList$6;->this$0:Lnitro/phonestats/activities/AppList;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lnitro/phonestats/activities/AppList$6;->this$0:Lnitro/phonestats/activities/AppList;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lnitro/phonestats/activities/AppList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lnitro/phonestats/activities/AppList;->access$8(Lnitro/phonestats/activities/AppList;Landroid/app/ProgressDialog;)V

    .line 202
    iget-object v0, p0, Lnitro/phonestats/activities/AppList$6;->this$0:Lnitro/phonestats/activities/AppList;

    #getter for: Lnitro/phonestats/activities/AppList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lnitro/phonestats/activities/AppList;->access$9(Lnitro/phonestats/activities/AppList;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/activities/AppList$6;->this$0:Lnitro/phonestats/activities/AppList;

    const v2, 0x7f070047

    invoke-virtual {v1, v2}, Lnitro/phonestats/activities/AppList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lnitro/phonestats/activities/AppList$6;->this$0:Lnitro/phonestats/activities/AppList;

    #getter for: Lnitro/phonestats/activities/AppList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lnitro/phonestats/activities/AppList;->access$9(Lnitro/phonestats/activities/AppList;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 204
    iget-object v0, p0, Lnitro/phonestats/activities/AppList$6;->this$0:Lnitro/phonestats/activities/AppList;

    #getter for: Lnitro/phonestats/activities/AppList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lnitro/phonestats/activities/AppList;->access$9(Lnitro/phonestats/activities/AppList;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 205
    return-void
.end method
