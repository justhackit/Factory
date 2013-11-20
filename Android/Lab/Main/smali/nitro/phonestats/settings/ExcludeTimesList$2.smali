.class Lnitro/phonestats/settings/ExcludeTimesList$2;
.super Ljava/lang/Object;
.source "ExcludeTimesList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/ExcludeTimesList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/ExcludeTimesList;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/ExcludeTimesList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/ExcludeTimesList$2;->this$0:Lnitro/phonestats/settings/ExcludeTimesList;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 142
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeTimesList$2;->this$0:Lnitro/phonestats/settings/ExcludeTimesList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/ExcludeTimesList;->showDialog(I)V

    .line 144
    return-void
.end method
