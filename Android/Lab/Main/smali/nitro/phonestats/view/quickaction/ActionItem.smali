.class public Lnitro/phonestats/view/quickaction/ActionItem;
.super Ljava/lang/Object;
.source "ActionItem.java"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private listener:Landroid/view/View$OnClickListener;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lnitro/phonestats/view/quickaction/ActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 31
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/ActionItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/ActionItem;->listener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/ActionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 57
    iput-object p1, p0, Lnitro/phonestats/view/quickaction/ActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 58
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 74
    iput-object p1, p0, Lnitro/phonestats/view/quickaction/ActionItem;->listener:Landroid/view/View$OnClickListener;

    .line 75
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 39
    iput-object p1, p0, Lnitro/phonestats/view/quickaction/ActionItem;->title:Ljava/lang/String;

    .line 40
    return-void
.end method
