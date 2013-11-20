.class public Lnitro/phonestats/view/quickaction/AdvancedActionItem;
.super Lnitro/phonestats/view/quickaction/ActionItem;
.source "AdvancedActionItem.java"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private view:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lnitro/phonestats/view/quickaction/ActionItem;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/view/quickaction/AdvancedActionItem;->data:Ljava/util/List;

    .line 6
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/AdvancedActionItem;->data:Ljava/util/List;

    return-object v0
.end method

.method public getView()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lnitro/phonestats/view/quickaction/AdvancedActionItem;->view:I

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lnitro/phonestats/view/quickaction/AdvancedActionItem;->data:Ljava/util/List;

    .line 25
    return-void
.end method

.method public setView(I)V
    .locals 0
    .parameter "resID"

    .prologue
    .line 14
    iput p1, p0, Lnitro/phonestats/view/quickaction/AdvancedActionItem;->view:I

    .line 16
    return-void
.end method
