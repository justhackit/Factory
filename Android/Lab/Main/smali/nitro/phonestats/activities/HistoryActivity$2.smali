.class Lnitro/phonestats/activities/HistoryActivity$2;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/HistoryActivity;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/activities/HistoryActivity;

.field private final synthetic val$executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/HistoryActivity;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/HistoryActivity$2;->this$0:Lnitro/phonestats/activities/HistoryActivity;

    iput-object p2, p0, Lnitro/phonestats/activities/HistoryActivity$2;->val$executor:Ljava/util/concurrent/ExecutorService;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/activities/HistoryActivity$2;)Lnitro/phonestats/activities/HistoryActivity;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lnitro/phonestats/activities/HistoryActivity$2;->this$0:Lnitro/phonestats/activities/HistoryActivity;

    return-object v0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 160
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 154
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "page"

    .prologue
    .line 130
    iget-object v0, p0, Lnitro/phonestats/activities/HistoryActivity$2;->val$executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnitro/phonestats/activities/HistoryActivity$2$1;

    invoke-direct {v1, p0, p1}, Lnitro/phonestats/activities/HistoryActivity$2$1;-><init>(Lnitro/phonestats/activities/HistoryActivity$2;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method
