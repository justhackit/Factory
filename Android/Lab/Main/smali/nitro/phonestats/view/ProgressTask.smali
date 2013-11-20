.class public abstract Lnitro/phonestats/view/ProgressTask;
.super Landroid/os/AsyncTask;
.source "ProgressTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 15
    iput-object p1, p0, Lnitro/phonestats/view/ProgressTask;->ctx:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnitro/phonestats/view/ProgressTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 28
    :try_start_0
    invoke-virtual {p0}, Lnitro/phonestats/view/ProgressTask;->doInBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 30
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lnitro/phonestats/view/ProgressTask;->onException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected abstract doInBackground()V
.end method

.method protected onException(Ljava/lang/Exception;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnitro/phonestats/view/ProgressTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 47
    iget-object v0, p0, Lnitro/phonestats/view/ProgressTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 48
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, Lnitro/phonestats/view/ProgressTask;->ctx:Landroid/content/Context;

    const-string v1, "In progress"

    const-string v2, "Loading..."

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/view/ProgressTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 22
    return-void
.end method
