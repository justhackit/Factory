.class Lnitro/phonestats/Main$7;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/Main;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/Main;


# direct methods
.method constructor <init>(Lnitro/phonestats/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/Main$7;->this$0:Lnitro/phonestats/Main;

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 756
    iget-object v0, p0, Lnitro/phonestats/Main$7;->this$0:Lnitro/phonestats/Main;

    const/4 v1, 0x3

    const/16 v2, 0x3e8

    #calls: Lnitro/phonestats/Main;->dispatchTabButtonClick(IIZ)V
    invoke-static {v0, v1, v2, p2}, Lnitro/phonestats/Main;->access$6(Lnitro/phonestats/Main;IIZ)V

    .line 757
    return-void
.end method
