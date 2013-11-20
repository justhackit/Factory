.class public Lnitro/phonestats/view/quickaction/CustomPopupWindow;
.super Ljava/lang/Object;
.source "CustomPopupWindow.java"


# instance fields
.field protected final anchor:Landroid/view/View;

.field private background:Landroid/graphics/drawable/Drawable;

.field private root:Landroid/view/View;

.field protected final window:Landroid/widget/PopupWindow;

.field protected final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "anchor"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->background:Landroid/graphics/drawable/Drawable;

    .line 31
    iput-object p1, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->anchor:Landroid/view/View;

    .line 32
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    .line 36
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    new-instance v1, Lnitro/phonestats/view/quickaction/CustomPopupWindow$1;

    invoke-direct {v1, p0}, Lnitro/phonestats/view/quickaction/CustomPopupWindow$1;-><init>(Lnitro/phonestats/view/quickaction/CustomPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->windowManager:Landroid/view/WindowManager;

    .line 51
    invoke-virtual {p0}, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->onCreate()V

    .line 52
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 202
    return-void
.end method

.method protected onCreate()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method protected preShow()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x1

    .line 66
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->root:Landroid/view/View;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setContentView was not called with a view to display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->onShow()V

    .line 72
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->background:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :goto_0
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 83
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 84
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 85
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 86
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 88
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->root:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 89
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "background"

    .prologue
    .line 92
    iput-object p1, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->background:Landroid/graphics/drawable/Drawable;

    .line 93
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .parameter "layoutResID"

    .prologue
    .line 114
    iget-object v1, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->anchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 116
    .local v0, inflator:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->setContentView(Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 102
    iput-object p1, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->root:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 125
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 126
    return-void
.end method

.method public showDropDown()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, v0, v0}, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->showDropDown(II)V

    .line 133
    return-void
.end method

.method public showDropDown(II)V
    .locals 2
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 144
    invoke-virtual {p0}, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->preShow()V

    .line 146
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 148
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->anchor:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 149
    return-void
.end method

.method public showLikeQuickAction()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, v0, v0}, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->showLikeQuickAction(II)V

    .line 156
    return-void
.end method

.method public showLikeQuickAction(II)V
    .locals 12
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 167
    invoke-virtual {p0}, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->preShow()V

    .line 169
    iget-object v7, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    const v8, 0x7f090011

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 171
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 172
    .local v1, location:[I
    iget-object v7, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->anchor:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 175
    new-instance v0, Landroid/graphics/Rect;

    const/4 v7, 0x0

    aget v7, v1, v7

    const/4 v8, 0x1

    aget v8, v1, v8

    const/4 v9, 0x0

    aget v9, v1, v9

    iget-object v10, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->anchor:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    const/4 v10, 0x1

    aget v10, v1, v10

    .line 176
    iget-object v11, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->anchor:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    .line 175
    invoke-direct {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 178
    .local v0, anchorRect:Landroid/graphics/Rect;
    iget-object v7, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->root:Landroid/view/View;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v7, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->root:Landroid/view/View;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 181
    iget-object v7, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->root:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 182
    .local v3, rootWidth:I
    iget-object v7, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->root:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 184
    .local v2, rootHeight:I
    iget-object v7, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 187
    .local v4, screenWidth:I
    sub-int v7, v4, v3

    div-int/lit8 v7, v7, 0x2

    add-int v5, v7, p1

    .line 188
    .local v5, xPos:I
    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v2

    add-int v6, v7, p2

    .line 191
    .local v6, yPos:I
    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-le v2, v7, :cond_0

    .line 192
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    add-int v6, v7, p2

    .line 194
    iget-object v7, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    const v8, 0x7f09000c

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 197
    :cond_0
    iget-object v7, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lnitro/phonestats/view/quickaction/CustomPopupWindow;->anchor:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 198
    return-void
.end method
