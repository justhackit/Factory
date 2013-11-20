.class Lnitro/phonestats/activities/AppList$7$1;
.super Ljava/lang/Object;
.source "AppList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/AppList$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/activities/AppList$7;


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/AppList$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/AppList$7$1;->this$1:Lnitro/phonestats/activities/AppList$7;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 265
    iget-object v0, p0, Lnitro/phonestats/activities/AppList$7$1;->this$1:Lnitro/phonestats/activities/AppList$7;

    #getter for: Lnitro/phonestats/activities/AppList$7;->this$0:Lnitro/phonestats/activities/AppList;
    invoke-static {v0}, Lnitro/phonestats/activities/AppList$7;->access$0(Lnitro/phonestats/activities/AppList$7;)Lnitro/phonestats/activities/AppList;

    move-result-object v0

    invoke-virtual {v0}, Lnitro/phonestats/activities/AppList;->finish()V

    .line 266
    return-void
.end method
