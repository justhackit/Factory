.class Lnitro/phonestats/settings/ExcludeList$2;
.super Ljava/lang/Object;
.source "ExcludeList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/ExcludeList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/ExcludeList;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/ExcludeList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/ExcludeList$2;->this$0:Lnitro/phonestats/settings/ExcludeList;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 144
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeList$2;->this$0:Lnitro/phonestats/settings/ExcludeList;

    invoke-virtual {v0}, Lnitro/phonestats/settings/ExcludeList;->save()V

    .line 145
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeList$2;->this$0:Lnitro/phonestats/settings/ExcludeList;

    invoke-virtual {v0}, Lnitro/phonestats/settings/ExcludeList;->finish()V

    .line 146
    return-void
.end method
