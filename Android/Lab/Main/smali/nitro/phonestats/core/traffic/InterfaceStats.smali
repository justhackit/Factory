.class public Lnitro/phonestats/core/traffic/InterfaceStats;
.super Ljava/lang/Object;
.source "InterfaceStats.java"


# instance fields
.field private bytesReceived:J

.field private bytesSent:J

.field private interfaceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "interfaceName"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lnitro/phonestats/core/traffic/InterfaceStats;->interfaceName:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public declared-synchronized getBytesReceived()J
    .locals 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lnitro/phonestats/core/traffic/InterfaceStats;->bytesReceived:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesSent()J
    .locals 2

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lnitro/phonestats/core/traffic/InterfaceStats;->bytesSent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/core/traffic/InterfaceStats;->interfaceName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBytesReceived(J)V
    .locals 1
    .parameter "bytesReceived"

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lnitro/phonestats/core/traffic/InterfaceStats;->bytesReceived:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBytesSent(J)V
    .locals 1
    .parameter "bytesSent"

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lnitro/phonestats/core/traffic/InterfaceStats;->bytesSent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
