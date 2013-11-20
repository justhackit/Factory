.class Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "MultiProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/view/MultiProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field private mFromUser:Z

.field private mId:I

.field private mProgress:I

.field final synthetic this$0:Lnitro/phonestats/view/MultiProgressBar;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/MultiProgressBar;IIZ)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 141
    iput-object p1, p0, Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;->this$0:Lnitro/phonestats/view/MultiProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p2, p0, Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;->mId:I

    .line 143
    iput p3, p0, Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 144
    iput-boolean p4, p0, Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 145
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;->this$0:Lnitro/phonestats/view/MultiProgressBar;

    iget v1, p0, Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;->mId:I

    iget v2, p0, Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;->mProgress:I

    iget-boolean v3, p0, Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;->mFromUser:Z

    #calls: Lnitro/phonestats/view/MultiProgressBar;->doRefreshProgress(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lnitro/phonestats/view/MultiProgressBar;->access$0(Lnitro/phonestats/view/MultiProgressBar;IIZ)V

    .line 150
    iget-object v0, p0, Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;->this$0:Lnitro/phonestats/view/MultiProgressBar;

    #setter for: Lnitro/phonestats/view/MultiProgressBar;->mRefreshProgressRunnable:Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;
    invoke-static {v0, p0}, Lnitro/phonestats/view/MultiProgressBar;->access$1(Lnitro/phonestats/view/MultiProgressBar;Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;)V

    .line 151
    return-void
.end method

.method public setup(IIZ)V
    .locals 0
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 154
    iput p1, p0, Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;->mId:I

    .line 155
    iput p2, p0, Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 156
    iput-boolean p3, p0, Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 157
    return-void
.end method
