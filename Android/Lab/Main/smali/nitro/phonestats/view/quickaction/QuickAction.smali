.class public Lnitro/phonestats/view/quickaction/QuickAction;
.super Lnitro/phonestats/view/quickaction/CustomPopupWindow;
.source "QuickAction.java"


# static fields
.field protected static final ANIM_AUTO:I = 0x5

.field protected static final ANIM_GROW_FROM_CENTER:I = 0x3

.field protected static final ANIM_GROW_FROM_LEFT:I = 0x1

.field protected static final ANIM_GROW_FROM_RIGHT:I = 0x2

.field protected static final ANIM_REFLECT:I = 0x4


# instance fields
.field private actionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnitro/phonestats/view/quickaction/ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private animStyle:I

.field private final context:Landroid/content/Context;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final mArrowDown:Landroid/widget/ImageView;

.field private final mArrowUp:Landroid/widget/ImageView;

.field private mTrack:Landroid/view/ViewGroup;

.field private final root:Landroid/view/View;

.field private scroller:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "anchor"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lnitro/phonestats/view/quickaction/CustomPopupWindow;-><init>(Landroid/view/View;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/view/quickaction/QuickAction;->actionList:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/view/quickaction/QuickAction;->context:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/QuickAction;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnitro/phonestats/view/quickaction/QuickAction;->inflater:Landroid/view/LayoutInflater;

    .line 57
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/QuickAction;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/view/quickaction/QuickAction;->root:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/QuickAction;->root:Landroid/view/View;

    const v1, 0x7f0a00b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnitro/phonestats/view/quickaction/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    .line 60
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/QuickAction;->root:Landroid/view/View;

    const v1, 0x7f0a00af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnitro/phonestats/view/quickaction/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    .line 62
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/QuickAction;->root:Landroid/view/View;

    invoke-virtual {p0, v0}, Lnitro/phonestats/view/quickaction/QuickAction;->setContentView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/QuickAction;->root:Landroid/view/View;

    const v1, 0x7f0a00ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lnitro/phonestats/view/quickaction/QuickAction;->mTrack:Landroid/view/ViewGroup;

    .line 65
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/QuickAction;->root:Landroid/view/View;

    const v1, 0x7f0a00ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lnitro/phonestats/view/quickaction/QuickAction;->scroller:Landroid/widget/ScrollView;

    .line 66
    const/4 v0, 0x5

    iput v0, p0, Lnitro/phonestats/view/quickaction/QuickAction;->animStyle:I

    .line 67
    return-void
.end method

.method private createActionList()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 215
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lnitro/phonestats/view/quickaction/QuickAction;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 243
    return-void

    .line 216
    :cond_0
    iget-object v6, p0, Lnitro/phonestats/view/quickaction/QuickAction;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnitro/phonestats/view/quickaction/ActionItem;

    invoke-virtual {v6}, Lnitro/phonestats/view/quickaction/ActionItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, title:Ljava/lang/String;
    iget-object v6, p0, Lnitro/phonestats/view/quickaction/QuickAction;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnitro/phonestats/view/quickaction/ActionItem;

    invoke-virtual {v6}, Lnitro/phonestats/view/quickaction/ActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 218
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lnitro/phonestats/view/quickaction/QuickAction;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnitro/phonestats/view/quickaction/ActionItem;

    invoke-virtual {v6}, Lnitro/phonestats/view/quickaction/ActionItem;->getListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 220
    .local v3, listener:Landroid/view/View$OnClickListener;
    iget-object v6, p0, Lnitro/phonestats/view/quickaction/QuickAction;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lnitro/phonestats/view/quickaction/AdvancedActionItem;

    if-eqz v6, :cond_1

    .line 222
    iget-object v6, p0, Lnitro/phonestats/view/quickaction/QuickAction;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/view/quickaction/AdvancedActionItem;

    .line 224
    .local v0, aai:Lnitro/phonestats/view/quickaction/AdvancedActionItem;
    invoke-virtual {v0}, Lnitro/phonestats/view/quickaction/AdvancedActionItem;->getView()I

    move-result v6

    invoke-virtual {v0}, Lnitro/phonestats/view/quickaction/AdvancedActionItem;->getData()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v6, v7, v3}, Lnitro/phonestats/view/quickaction/QuickAction;->getActionItem(ILjava/util/List;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v5

    .line 233
    .end local v0           #aai:Lnitro/phonestats/view/quickaction/AdvancedActionItem;
    .local v5, view:Landroid/view/View;
    :goto_1
    if-eqz v3, :cond_2

    .line 234
    invoke-virtual {v5, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 235
    invoke-virtual {v5, v9}, Landroid/view/View;->setClickable(Z)V

    .line 241
    :goto_2
    iget-object v6, p0, Lnitro/phonestats/view/quickaction/QuickAction;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v5           #view:Landroid/view/View;
    :cond_1
    invoke-direct {p0, v4, v2, v3}, Lnitro/phonestats/view/quickaction/QuickAction;->getActionItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v5

    .restart local v5       #view:Landroid/view/View;
    goto :goto_1

    .line 237
    :cond_2
    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 238
    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    goto :goto_2
.end method

.method private getActionItem(ILjava/util/List;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 10
    .parameter "resID"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lnitro/phonestats/view/quickaction/QuickAction;->inflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 282
    .local v0, container:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    .line 283
    .local v1, i:I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 292
    if-eqz p3, :cond_0

    .line 293
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    :cond_0
    return-object v0

    .line 283
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 285
    .local v3, text:Ljava/lang/String;
    iget-object v6, p0, Lnitro/phonestats/view/quickaction/QuickAction;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "data"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    iget-object v9, p0, Lnitro/phonestats/view/quickaction/QuickAction;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 286
    .local v2, resId:I
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 287
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getActionItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 6
    .parameter "title"
    .parameter "icon"
    .parameter "listener"

    .prologue
    .line 255
    iget-object v3, p0, Lnitro/phonestats/view/quickaction/QuickAction;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 257
    .local v0, container:Landroid/widget/LinearLayout;
    const v3, 0x7f0a0014

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 258
    .local v1, img:Landroid/widget/ImageView;
    const v3, 0x7f0a00b3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 260
    .local v2, text:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    .line 261
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_0
    if-eqz p1, :cond_1

    .line 265
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_1
    if-eqz p3, :cond_2

    .line 269
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    :cond_2
    return-object v0
.end method

.method private setAnimationStyle(IIZ)V
    .locals 7
    .parameter "screenWidth"
    .parameter "requestedX"
    .parameter "onTop"

    .prologue
    const v1, 0x7f090012

    const v4, 0x7f090011

    const v3, 0x7f09000e

    const v2, 0x7f09000d

    const v5, 0x7f09000c

    .line 174
    iget-object v6, p0, Lnitro/phonestats/view/quickaction/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v0, p2, v6

    .line 176
    .local v0, arrowPos:I
    iget v6, p0, Lnitro/phonestats/view/quickaction/QuickAction;->animStyle:I

    packed-switch v6, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 178
    :pswitch_0
    iget-object v3, p0, Lnitro/phonestats/view/quickaction/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 182
    :pswitch_1
    iget-object v2, p0, Lnitro/phonestats/view/quickaction/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_1

    const v1, 0x7f090013

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_2

    .line 186
    :pswitch_2
    iget-object v2, p0, Lnitro/phonestats/view/quickaction/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_2

    move v1, v4

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_3

    .line 190
    :pswitch_3
    iget-object v2, p0, Lnitro/phonestats/view/quickaction/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_3

    const v1, 0x7f090014

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f09000f

    goto :goto_4

    .line 194
    :pswitch_4
    div-int/lit8 v6, p1, 0x4

    if-gt v0, v6, :cond_5

    .line 195
    iget-object v3, p0, Lnitro/phonestats/view/quickaction/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_4

    :goto_5
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_5

    .line 196
    :cond_5
    div-int/lit8 v1, p1, 0x4

    if-le v0, v1, :cond_7

    div-int/lit8 v1, p1, 0x4

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_7

    .line 197
    iget-object v1, p0, Lnitro/phonestats/view/quickaction/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_6

    :goto_6
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_6

    .line 199
    :cond_7
    iget-object v1, p0, Lnitro/phonestats/view/quickaction/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_8

    const v3, 0x7f090013

    :cond_8
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private showArrow(II)V
    .locals 5
    .parameter "whichArrow"
    .parameter "requestedX"

    .prologue
    const v4, 0x7f0a00af

    .line 306
    if-ne p1, v4, :cond_0

    iget-object v3, p0, Lnitro/phonestats/view/quickaction/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    .line 307
    .local v3, showArrow:Landroid/view/View;
    :goto_0
    if-ne p1, v4, :cond_1

    iget-object v1, p0, Lnitro/phonestats/view/quickaction/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    .line 309
    .local v1, hideArrow:Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lnitro/phonestats/view/quickaction/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 311
    .local v0, arrowWidth:I
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 313
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 315
    .local v2, param:Landroid/view/ViewGroup$MarginLayoutParams;
    div-int/lit8 v4, v0, 0x2

    sub-int v4, p2, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 317
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 318
    return-void

    .line 306
    .end local v0           #arrowWidth:I
    .end local v1           #hideArrow:Landroid/view/View;
    .end local v2           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3           #showArrow:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lnitro/phonestats/view/quickaction/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    goto :goto_0

    .line 307
    .restart local v3       #showArrow:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lnitro/phonestats/view/quickaction/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    goto :goto_1
.end method


# virtual methods
.method public addActionItem(Lnitro/phonestats/view/quickaction/ActionItem;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 84
    iget-object v0, p0, Lnitro/phonestats/view/quickaction/QuickAction;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public setAnimStyle(I)V
    .locals 0
    .parameter "animStyle"

    .prologue
    .line 75
    iput p1, p0, Lnitro/phonestats/view/quickaction/QuickAction;->animStyle:I

    .line 76
    return-void
.end method

.method public show()V
    .locals 22

    .prologue
    .line 92
    invoke-virtual/range {p0 .. p0}, Lnitro/phonestats/view/quickaction/QuickAction;->preShow()V

    .line 96
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v8, v0, [I

    .line 98
    .local v8, location:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->anchor:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 100
    new-instance v4, Landroid/graphics/Rect;

    const/16 v17, 0x0

    aget v17, v8, v17

    const/16 v18, 0x1

    aget v18, v8, v18

    const/16 v19, 0x0

    aget v19, v8, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->anchor:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v20

    add-int v19, v19, v20

    const/16 v20, 0x1

    aget v20, v8, v20

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->anchor:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getHeight()I

    move-result v21

    add-int v20, v20, v21

    .line 100
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 103
    .local v4, anchorRect:Landroid/graphics/Rect;
    invoke-direct/range {p0 .. p0}, Lnitro/phonestats/view/quickaction/QuickAction;->createActionList()V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->windowManager:Landroid/view/WindowManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Display;->getWidth()I

    move-result v13

    .line 107
    .local v13, screenWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->windowManager:Landroid/view/WindowManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Display;->getHeight()I

    move-result v12

    .line 111
    .local v12, screenHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->root:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->root:Landroid/view/View;

    move-object/from16 v17, v0

    const/high16 v18, -0x8000

    move/from16 v0, v18

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/high16 v19, -0x8000

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Landroid/view/View;->measure(II)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->root:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v12, :cond_1

    move v10, v12

    .line 117
    .local v10, rootHeight:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->root:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v13, :cond_2

    move v11, v13

    .line 119
    .local v11, rootWidth:I
    :goto_1
    const/4 v14, 0x0

    .line 121
    .local v14, xOffset:I
    if-ne v11, v13, :cond_3

    .line 122
    const/4 v15, 0x0

    .line 136
    .local v15, xPos:I
    :goto_2
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 137
    .local v6, dyTop:I
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v5, v12, v17

    .line 139
    .local v5, dyBottom:I
    if-le v6, v5, :cond_6

    const/4 v9, 0x1

    .line 141
    .local v9, onTop:Z
    :goto_3
    if-eqz v9, :cond_8

    .line 142
    if-le v10, v6, :cond_7

    .line 143
    const/16 v16, 0xf

    .line 144
    .local v16, yPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->scroller:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 145
    .local v7, l:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->anchor:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v17

    sub-int v17, v6, v17

    move/from16 v0, v17

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    .end local v7           #l:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_4
    if-eqz v9, :cond_9

    const v17, 0x7f0a00b0

    :goto_5
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v18

    sub-int v18, v18, v15

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/view/quickaction/QuickAction;->showArrow(II)V

    .line 160
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v1, v9}, Lnitro/phonestats/view/quickaction/QuickAction;->setAnimationStyle(IIZ)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->window:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->anchor:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 163
    return-void

    .line 116
    .end local v5           #dyBottom:I
    .end local v6           #dyTop:I
    .end local v9           #onTop:Z
    .end local v10           #rootHeight:I
    .end local v11           #rootWidth:I
    .end local v14           #xOffset:I
    .end local v15           #xPos:I
    .end local v16           #yPos:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->root:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    goto/16 :goto_0

    .line 117
    .restart local v10       #rootHeight:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->root:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    goto :goto_1

    .line 123
    .restart local v11       #rootWidth:I
    .restart local v14       #xOffset:I
    :cond_3
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int v17, v17, v11

    move/from16 v0, v17

    if-le v0, v13, :cond_4

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lnitro/phonestats/core/helper/NitroUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v17

    const/16 v18, 0xc

    invoke-static/range {v17 .. v18}, Lnitro/phonestats/core/helper/NitroUtils;->scaleDIPtoPixel(FI)I

    move-result v14

    .line 126
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->anchor:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v18

    sub-int v18, v11, v18

    sub-int v17, v17, v18

    add-int v15, v17, v14

    .restart local v15       #xPos:I
    goto/16 :goto_2

    .line 128
    .end local v15           #xPos:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->anchor:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v11, :cond_5

    .line 129
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    div-int/lit8 v18, v11, 0x2

    sub-int v15, v17, v18

    .restart local v15       #xPos:I
    goto/16 :goto_2

    .line 131
    .end local v15           #xPos:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lnitro/phonestats/core/helper/NitroUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v17

    const/16 v18, -0xc

    invoke-static/range {v17 .. v18}, Lnitro/phonestats/core/helper/NitroUtils;->scaleDIPtoPixel(FI)I

    move-result v14

    .line 132
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int v15, v17, v14

    .restart local v15       #xPos:I
    goto/16 :goto_2

    .line 139
    .restart local v5       #dyBottom:I
    .restart local v6       #dyTop:I
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 147
    .restart local v9       #onTop:Z
    :cond_7
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v16, v17, v10

    .restart local v16       #yPos:I
    goto/16 :goto_4

    .line 150
    .end local v16           #yPos:I
    :cond_8
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    .line 152
    .restart local v16       #yPos:I
    if-le v10, v5, :cond_0

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/quickaction/QuickAction;->scroller:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 154
    .restart local v7       #l:Landroid/view/ViewGroup$LayoutParams;
    iput v5, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_4

    .line 158
    .end local v7           #l:Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    const v17, 0x7f0a00af

    goto/16 :goto_5
.end method
