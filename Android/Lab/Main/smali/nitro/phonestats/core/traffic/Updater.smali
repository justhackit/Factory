.class public Lnitro/phonestats/core/traffic/Updater;
.super Landroid/content/BroadcastReceiver;
.source "Updater.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field public static final ACTION_UPDATE_COUNTERS:Ljava/lang/String; = "nitro.phonestats.ACTION_UPDATE_COUNTERS"

.field public static final ACTION_UPDATE_COUNTERS_PLUS_WIDGET:Ljava/lang/String; = "nitro.phonestats.ACTION_UPDATE_COUNTERS_PLUS_WIDGET"

.field private static final INTERFACE_FILE:Ljava/lang/String; = "/proc/self/net/dev"

.field private static final LINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final sInterfacesStatsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnitro/phonestats/core/traffic/InterfaceStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 65
    const-string v2, "InterfaceName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 66
    const-string v2, "BytesReceived"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 67
    const-string v2, "BytesSent"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 68
    const-string v2, "BytesReceivedSystem"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 69
    const-string v2, "BytesSentSystem"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 70
    const-string v2, "BytesTransmissionLimit"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 71
    const-string v2, "InterfaceAlias"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 72
    const-string v2, "NotificationLevel"

    aput-object v2, v0, v1

    .line 64
    sput-object v0, Lnitro/phonestats/core/traffic/Updater;->PROJECTION:[Ljava/lang/String;

    .line 88
    const-string v0, "^(.*?):\\s*([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/traffic/Updater;->LINE_PATTERN:Ljava/util/regex/Pattern;

    .line 130
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnitro/phonestats/core/traffic/Updater;->sInterfacesStatsMap:Ljava/util/Map;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private cutoffDataConnection(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 281
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->useAPNDroid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {p1}, Lnitro/phonestats/core/traffic/JuiceDefenderIntegration;->disableMobileDate(Landroid/content/Context;)V

    .line 294
    :cond_0
    return-void
.end method

.method public static getAliasForName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "interfaceName"

    .prologue
    .line 603
    :try_start_0
    invoke-static {p0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getInterfaceNameWifiMonthly(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 612
    .local v2, wifiname:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-static {p0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getInterfaceNameMobileMonthly(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 618
    .local v1, mobilename:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 619
    const v3, 0x7f07017a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 626
    .end local p1
    :cond_0
    :goto_2
    return-object p1

    .line 604
    .end local v1           #mobilename:Ljava/lang/String;
    .end local v2           #wifiname:Ljava/lang/String;
    .restart local p1
    :catch_0
    move-exception v0

    .line 606
    .local v0, e:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
    const-string v2, "xyz"

    .restart local v2       #wifiname:Ljava/lang/String;
    goto :goto_0

    .line 613
    .end local v0           #e:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
    :catch_1
    move-exception v0

    .line 615
    .restart local v0       #e:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
    const-string v1, "xyz"

    .restart local v1       #mobilename:Ljava/lang/String;
    goto :goto_1

    .line 620
    .end local v0           #e:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 621
    const v3, 0x7f07017b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 622
    :cond_2
    const-string v3, "eth"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 623
    const v3, 0x7f07017c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method private static updateDataMap(Landroid/content/Context;)V
    .locals 28
    .parameter "ctx"

    .prologue
    .line 640
    const/16 v17, 0x0

    .line 641
    .local v17, fstream:Ljava/io/FileReader;
    const/16 v19, 0x0

    .line 642
    .local v19, in:Ljava/io/BufferedReader;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v22, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v18, Ljava/io/FileReader;

    const-string v26, "/proc/self/net/dev"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 648
    .end local v17           #fstream:Ljava/io/FileReader;
    .local v18, fstream:Ljava/io/FileReader;
    if-eqz v18, :cond_a

    .line 650
    :try_start_1
    new-instance v20, Ljava/io/BufferedReader;

    const/16 v26, 0x1f4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 653
    .end local v19           #in:Ljava/io/BufferedReader;
    .local v20, in:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    .local v21, line:Ljava/lang/String;
    if-nez v21, :cond_7

    .line 657
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V

    .line 658
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v19, v20

    .end local v20           #in:Ljava/io/BufferedReader;
    .restart local v19       #in:Ljava/io/BufferedReader;
    move-object/from16 v17, v18

    .line 671
    .end local v18           #fstream:Ljava/io/FileReader;
    .end local v21           #line:Ljava/lang/String;
    .restart local v17       #fstream:Ljava/io/FileReader;
    :goto_1
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_0
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_8

    .line 701
    sget-object v26, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_6

    .line 703
    sget-object v15, Lnitro/phonestats/core/traffic/TrafficEngine;->mobile_API_prefix:Ljava/lang/String;

    .line 704
    .local v15, deviceName:Ljava/lang/String;
    const-string v16, "api_wifi"

    .line 705
    .local v16, deviceNameWifi:Ljava/lang/String;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v3

    .line 706
    .local v3, bytesReceived:J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v7

    .line 707
    .local v7, bytesSent:J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v5

    .line 708
    .local v5, bytesReceivedTotal:J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v9

    .line 709
    .local v9, bytesSentTotal:J
    sget-object v26, Lnitro/phonestats/core/traffic/Updater;->sInterfacesStatsMap:Ljava/util/Map;

    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lnitro/phonestats/core/traffic/InterfaceStats;

    .line 710
    .local v24, stats:Lnitro/phonestats/core/traffic/InterfaceStats;
    sget-object v26, Lnitro/phonestats/core/traffic/Updater;->sInterfacesStatsMap:Ljava/util/Map;

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lnitro/phonestats/core/traffic/InterfaceStats;

    .line 712
    .local v25, statsWifi:Lnitro/phonestats/core/traffic/InterfaceStats;
    const-wide/16 v26, -0x1

    cmp-long v26, v3, v26

    if-eqz v26, :cond_2

    const-wide/16 v26, -0x1

    cmp-long v26, v7, v26

    if-eqz v26, :cond_2

    .line 715
    if-nez v24, :cond_1

    .line 716
    new-instance v24, Lnitro/phonestats/core/traffic/InterfaceStats;

    .end local v24           #stats:Lnitro/phonestats/core/traffic/InterfaceStats;
    move-object/from16 v0, v24

    invoke-direct {v0, v15}, Lnitro/phonestats/core/traffic/InterfaceStats;-><init>(Ljava/lang/String;)V

    .line 717
    .restart local v24       #stats:Lnitro/phonestats/core/traffic/InterfaceStats;
    sget-object v26, Lnitro/phonestats/core/traffic/Updater;->sInterfacesStatsMap:Ljava/util/Map;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :cond_1
    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Lnitro/phonestats/core/traffic/InterfaceStats;->setBytesReceived(J)V

    .line 721
    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Lnitro/phonestats/core/traffic/InterfaceStats;->setBytesSent(J)V

    .line 724
    :cond_2
    const-wide/16 v26, -0x1

    cmp-long v26, v5, v26

    if-eqz v26, :cond_6

    const-wide/16 v26, -0x1

    cmp-long v26, v9, v26

    if-eqz v26, :cond_6

    .line 726
    const-wide/16 v11, 0x0

    .line 727
    .local v11, bytesWifiReceived:J
    const-wide/16 v13, 0x0

    .line 728
    .local v13, bytesWifiSent:J
    const-wide/16 v26, 0x0

    cmp-long v26, v5, v26

    if-lez v26, :cond_3

    .line 729
    sub-long v11, v5, v3

    .line 730
    :cond_3
    const-wide/16 v26, 0x0

    cmp-long v26, v9, v26

    if-lez v26, :cond_4

    .line 731
    sub-long v13, v9, v7

    .line 733
    :cond_4
    if-nez v25, :cond_5

    .line 734
    new-instance v25, Lnitro/phonestats/core/traffic/InterfaceStats;

    .end local v25           #statsWifi:Lnitro/phonestats/core/traffic/InterfaceStats;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lnitro/phonestats/core/traffic/InterfaceStats;-><init>(Ljava/lang/String;)V

    .line 735
    .restart local v25       #statsWifi:Lnitro/phonestats/core/traffic/InterfaceStats;
    sget-object v26, Lnitro/phonestats/core/traffic/Updater;->sInterfacesStatsMap:Ljava/util/Map;

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    :cond_5
    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v12}, Lnitro/phonestats/core/traffic/InterfaceStats;->setBytesReceived(J)V

    .line 739
    move-object/from16 v0, v25

    invoke-virtual {v0, v13, v14}, Lnitro/phonestats/core/traffic/InterfaceStats;->setBytesSent(J)V

    .line 744
    .end local v3           #bytesReceived:J
    .end local v5           #bytesReceivedTotal:J
    .end local v7           #bytesSent:J
    .end local v9           #bytesSentTotal:J
    .end local v11           #bytesWifiReceived:J
    .end local v13           #bytesWifiSent:J
    .end local v15           #deviceName:Ljava/lang/String;
    .end local v16           #deviceNameWifi:Ljava/lang/String;
    .end local v24           #stats:Lnitro/phonestats/core/traffic/InterfaceStats;
    .end local v25           #statsWifi:Lnitro/phonestats/core/traffic/InterfaceStats;
    :cond_6
    return-void

    .line 654
    .end local v17           #fstream:Ljava/io/FileReader;
    .end local v19           #in:Ljava/io/BufferedReader;
    .restart local v18       #fstream:Ljava/io/FileReader;
    .restart local v20       #in:Ljava/io/BufferedReader;
    .restart local v21       #line:Ljava/lang/String;
    :cond_7
    :try_start_3
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 659
    .end local v21           #line:Ljava/lang/String;
    :catch_0
    move-exception v26

    move-object/from16 v19, v20

    .end local v20           #in:Ljava/io/BufferedReader;
    .restart local v19       #in:Ljava/io/BufferedReader;
    :goto_3
    move-object/from16 v17, v18

    .end local v18           #fstream:Ljava/io/FileReader;
    .restart local v17       #fstream:Ljava/io/FileReader;
    goto/16 :goto_1

    .line 671
    :cond_8
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 672
    .restart local v21       #line:Ljava/lang/String;
    sget-object v27, Lnitro/phonestats/core/traffic/Updater;->LINE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v23

    .line 674
    .local v23, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->matches()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 675
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 676
    .restart local v15       #deviceName:Ljava/lang/String;
    const/16 v27, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 677
    .restart local v3       #bytesReceived:J
    const/16 v27, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 678
    .restart local v7       #bytesSent:J
    sget-object v27, Lnitro/phonestats/core/traffic/Updater;->sInterfacesStatsMap:Ljava/util/Map;

    move-object/from16 v0, v27

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lnitro/phonestats/core/traffic/InterfaceStats;

    .line 680
    .restart local v24       #stats:Lnitro/phonestats/core/traffic/InterfaceStats;
    if-nez v24, :cond_9

    .line 681
    new-instance v24, Lnitro/phonestats/core/traffic/InterfaceStats;

    .end local v24           #stats:Lnitro/phonestats/core/traffic/InterfaceStats;
    move-object/from16 v0, v24

    invoke-direct {v0, v15}, Lnitro/phonestats/core/traffic/InterfaceStats;-><init>(Ljava/lang/String;)V

    .line 682
    .restart local v24       #stats:Lnitro/phonestats/core/traffic/InterfaceStats;
    sget-object v27, Lnitro/phonestats/core/traffic/Updater;->sInterfacesStatsMap:Ljava/util/Map;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :cond_9
    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Lnitro/phonestats/core/traffic/InterfaceStats;->setBytesReceived(J)V

    .line 691
    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Lnitro/phonestats/core/traffic/InterfaceStats;->setBytesSent(J)V

    goto/16 :goto_2

    .line 663
    .end local v3           #bytesReceived:J
    .end local v7           #bytesSent:J
    .end local v15           #deviceName:Ljava/lang/String;
    .end local v21           #line:Ljava/lang/String;
    .end local v23           #matcher:Ljava/util/regex/Matcher;
    .end local v24           #stats:Lnitro/phonestats/core/traffic/InterfaceStats;
    :catch_1
    move-exception v26

    goto/16 :goto_1

    .end local v17           #fstream:Ljava/io/FileReader;
    .restart local v18       #fstream:Ljava/io/FileReader;
    :catch_2
    move-exception v26

    move-object/from16 v17, v18

    .end local v18           #fstream:Ljava/io/FileReader;
    .restart local v17       #fstream:Ljava/io/FileReader;
    goto/16 :goto_1

    .end local v17           #fstream:Ljava/io/FileReader;
    .end local v19           #in:Ljava/io/BufferedReader;
    .restart local v18       #fstream:Ljava/io/FileReader;
    .restart local v20       #in:Ljava/io/BufferedReader;
    :catch_3
    move-exception v26

    move-object/from16 v19, v20

    .end local v20           #in:Ljava/io/BufferedReader;
    .restart local v19       #in:Ljava/io/BufferedReader;
    move-object/from16 v17, v18

    .end local v18           #fstream:Ljava/io/FileReader;
    .restart local v17       #fstream:Ljava/io/FileReader;
    goto/16 :goto_1

    .line 659
    .end local v17           #fstream:Ljava/io/FileReader;
    .restart local v18       #fstream:Ljava/io/FileReader;
    :catch_4
    move-exception v26

    goto :goto_3

    :cond_a
    move-object/from16 v17, v18

    .end local v18           #fstream:Ljava/io/FileReader;
    .restart local v17       #fstream:Ljava/io/FileReader;
    goto/16 :goto_1
.end method

.method public static updateInterfaceStats(Landroid/content/Context;)Z
    .locals 37
    .parameter "context"

    .prologue
    .line 305
    const/16 v31, 0x0

    .line 306
    .local v31, updateIssued:Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 308
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static/range {p0 .. p0}, Lnitro/phonestats/core/traffic/Updater;->updateDataMap(Landroid/content/Context;)V

    .line 310
    sget-object v3, Lnitro/phonestats/core/traffic/Updater;->sInterfacesStatsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_0
    :goto_0
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 578
    return v31

    .line 310
    :cond_1
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lnitro/phonestats/core/traffic/InterfaceStats;

    .line 311
    .local v30, stats:Lnitro/phonestats/core/traffic/InterfaceStats;
    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/traffic/InterfaceStats;->getBytesReceived()J

    move-result-wide v8

    .line 312
    .local v8, bytesReceivedCurrent:J
    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/traffic/InterfaceStats;->getBytesSent()J

    move-result-wide v16

    .line 315
    .local v16, bytesSentCurrent:J
    const/16 v27, 0x0

    .line 316
    .local v27, found:Z
    const/16 v29, 0x0

    .line 317
    .local v29, mobileFound:Z
    const/16 v35, 0x0

    .line 319
    .local v35, wifiFound:Z
    invoke-static/range {p0 .. p0}, Lnitro/phonestats/settings/core/Settings;->useOldDataCountings(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 321
    sget-object v4, Lnitro/phonestats/core/traffic/LegacyDevice;->CELL_INTERFACES:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v5, :cond_9

    .line 332
    sget-object v4, Lnitro/phonestats/core/traffic/LegacyDevice;->WIFI_INTERFACES:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_2
    if-lt v3, v5, :cond_b

    .line 344
    :cond_2
    if-nez v27, :cond_3

    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/traffic/InterfaceStats;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnitro/phonestats/core/traffic/TrafficEngine;->mobile_API_prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 346
    const/16 v27, 0x1

    .line 347
    const/16 v29, 0x1

    .line 351
    :cond_3
    if-nez v27, :cond_4

    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/traffic/InterfaceStats;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "api_wifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 353
    const/16 v27, 0x1

    .line 354
    const/16 v35, 0x1

    .line 370
    :cond_4
    if-eqz v27, :cond_0

    .line 381
    const-wide/16 v3, 0x0

    cmp-long v3, v8, v3

    if-gtz v3, :cond_5

    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-lez v3, :cond_0

    .line 383
    :cond_5
    sget-object v3, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lnitro/phonestats/core/traffic/Updater;->PROJECTION:[Ljava/lang/String;

    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "InterfaceName LIKE \'%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/traffic/InterfaceStats;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 385
    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 384
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 385
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 383
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 387
    .local v24, cursor:Landroid/database/Cursor;
    if-eqz v24, :cond_6

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_d

    .line 394
    :cond_6
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 395
    .local v32, values:Landroid/content/ContentValues;
    const-string v3, "InterfaceName"

    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/traffic/InterfaceStats;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v3, "InterfaceAlias"

    .line 397
    const-string v4, "-"

    .line 396
    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v3, "BytesReceived"

    .line 399
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 398
    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 400
    const-string v3, "BytesSent"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 401
    const-string v3, "BytesReceivedSystem"

    .line 402
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 401
    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 403
    const-string v3, "BytesSentSystem"

    .line 404
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 403
    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 410
    if-eqz v29, :cond_7

    .line 411
    const-string v3, "BytesTransmissionLimit"

    .line 412
    invoke-static/range {p0 .. p0}, Lnitro/phonestats/settings/core/Settings;->getDataLimit(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 411
    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 413
    const-string v3, "ResetCronExpression"

    .line 414
    invoke-static/range {p0 .. p0}, Lnitro/phonestats/settings/core/Settings;->getMonthBeginning(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Lnitro/phonestats/core/traffic/TrafficEngine;->getCronExpression(I)Ljava/lang/String;

    move-result-object v4

    .line 413
    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v33, Landroid/content/ContentValues;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 418
    .local v33, values2:Landroid/content/ContentValues;
    const-string v3, "InterfaceName"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "daily_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/traffic/InterfaceStats;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v3, "InterfaceAlias"

    const-string v4, " - (Daily)"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v3, "ResetCronExpression"

    .line 421
    const-string v4, "0 0 0 * * ? *"

    .line 420
    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v3, "BytesTransmissionLimit"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 424
    new-instance v34, Landroid/content/ContentValues;

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 426
    .local v34, values3:Landroid/content/ContentValues;
    const-string v3, "InterfaceName"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "alltime_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/traffic/InterfaceStats;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v3, "InterfaceAlias"

    const-string v4, "- (Alltime)"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v3, "ResetCronExpression"

    const-string v4, "0"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v3, "BytesTransmissionLimit"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 431
    sget-object v3, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v25

    .line 432
    .local v25, daily3GUri:Landroid/net/Uri;
    invoke-static/range {v25 .. v25}, Lnitro/phonestats/core/traffic/Resetter;->createResetterIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "0 0 0 * * ? *"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lnitro/phonestats/core/traffic/CronScheduler;->scheduleJob(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 433
    sget-object v3, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v34

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 440
    .end local v25           #daily3GUri:Landroid/net/Uri;
    .end local v33           #values2:Landroid/content/ContentValues;
    .end local v34           #values3:Landroid/content/ContentValues;
    :cond_7
    if-eqz v35, :cond_8

    .line 441
    const-string v3, "ResetCronExpression"

    .line 442
    invoke-static/range {p0 .. p0}, Lnitro/phonestats/settings/core/Settings;->getMonthBeginning(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Lnitro/phonestats/core/traffic/TrafficEngine;->getCronExpression(I)Ljava/lang/String;

    move-result-object v4

    .line 441
    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v33, Landroid/content/ContentValues;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 446
    .restart local v33       #values2:Landroid/content/ContentValues;
    const-string v3, "InterfaceName"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "daily_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/traffic/InterfaceStats;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v3, "InterfaceAlias"

    new-instance v4, Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/traffic/InterfaceStats;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 447
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lnitro/phonestats/core/traffic/Updater;->getAliasForName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    const-string v5, " (Daily)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 447
    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v3, "ResetCronExpression"

    .line 450
    const-string v4, "0 0 0 * * ? *"

    .line 449
    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v3, "BytesTransmissionLimit"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 453
    new-instance v34, Landroid/content/ContentValues;

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 455
    .restart local v34       #values3:Landroid/content/ContentValues;
    const-string v3, "InterfaceName"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "alltime_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/traffic/InterfaceStats;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v3, "InterfaceAlias"

    new-instance v4, Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/traffic/InterfaceStats;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 456
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lnitro/phonestats/core/traffic/Updater;->getAliasForName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    const-string v5, " (Alltime)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 456
    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v3, "ResetCronExpression"

    const-string v4, "0"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v3, "BytesTransmissionLimit"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 461
    sget-object v3, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v26

    .line 462
    .local v26, dailyWifiUri:Landroid/net/Uri;
    invoke-static/range {v26 .. v26}, Lnitro/phonestats/core/traffic/Resetter;->createResetterIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "0 0 0 * * ? *"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lnitro/phonestats/core/traffic/CronScheduler;->scheduleJob(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 463
    sget-object v3, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v34

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 468
    .end local v26           #dailyWifiUri:Landroid/net/Uri;
    .end local v33           #values2:Landroid/content/ContentValues;
    .end local v34           #values3:Landroid/content/ContentValues;
    :cond_8
    sget-object v3, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v32

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 470
    const/16 v31, 0x1

    .line 570
    .end local v32           #values:Landroid/content/ContentValues;
    :goto_3
    if-eqz v24, :cond_0

    .line 571
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 321
    .end local v24           #cursor:Landroid/database/Cursor;
    :cond_9
    aget-object v28, v4, v3

    .line 323
    .local v28, interfaceName:Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/traffic/InterfaceStats;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 325
    const/16 v27, 0x1

    .line 326
    const/16 v29, 0x1

    .line 321
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 332
    .end local v28           #interfaceName:Ljava/lang/String;
    :cond_b
    aget-object v28, v4, v3

    .line 334
    .restart local v28       #interfaceName:Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/traffic/InterfaceStats;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 336
    const/16 v27, 0x1

    .line 337
    const/16 v35, 0x1

    .line 332
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 479
    .end local v28           #interfaceName:Ljava/lang/String;
    .restart local v24       #cursor:Landroid/database/Cursor;
    :cond_d
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    .line 484
    :cond_e
    const-wide/16 v12, 0x0

    .line 485
    .local v12, bytesReceivedDelta:J
    const-wide/16 v20, 0x0

    .line 495
    .local v20, bytesSentDelta:J
    const/4 v3, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 496
    .local v10, bytesReceivedDb:J
    const/4 v3, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 497
    .local v18, bytesSentDb:J
    const/4 v3, 0x4

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 498
    .local v14, bytesReceivedLast:J
    const/4 v3, 0x5

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 501
    .local v22, bytesSentLast:J
    cmp-long v3, v14, v8

    if-gtz v3, :cond_10

    .line 502
    sub-long v12, v8, v14

    .line 509
    :goto_4
    cmp-long v3, v22, v16

    if-gtz v3, :cond_11

    .line 510
    sub-long v20, v16, v22

    .line 518
    :goto_5
    add-long v3, v12, v20

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_f

    .line 521
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 523
    .restart local v32       #values:Landroid/content/ContentValues;
    add-long/2addr v10, v12

    .line 524
    add-long v18, v18, v20

    .line 532
    const-string v3, "BytesReceived"

    .line 533
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 532
    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 534
    const-string v3, "BytesSent"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 535
    const-string v3, "BytesReceivedSystem"

    .line 536
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 535
    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 537
    const-string v3, "BytesSentSystem"

    .line 538
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 537
    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 546
    sget-object v3, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 546
    move-object/from16 v0, v32

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 563
    .end local v32           #values:Landroid/content/ContentValues;
    :cond_f
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 480
    if-nez v3, :cond_e

    .line 565
    const/16 v31, 0x1

    goto/16 :goto_3

    .line 506
    :cond_10
    move-wide v12, v8

    goto :goto_4

    .line 514
    :cond_11
    move-wide/from16 v20, v16

    goto :goto_5
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 140
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static/range {p1 .. p1}, Lnitro/phonestats/core/traffic/TrafficConfiguration;->getUsageThresholdMedium(Landroid/content/Context;)I

    move-result v24

    .line 141
    .local v24, usageThresholdMedium:I
    invoke-static/range {p1 .. p1}, Lnitro/phonestats/core/traffic/TrafficConfiguration;->getUsageThresholdHigh(Landroid/content/Context;)I

    move-result v23

    .line 143
    .local v23, usageThresholdHigh:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "traffic updater received "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 153
    :cond_0
    invoke-static/range {p1 .. p1}, Lnitro/phonestats/core/traffic/Updater;->updateInterfaceStats(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    sget-object v3, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lnitro/phonestats/core/traffic/Updater;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    .line 158
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 157
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 160
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 161
    const/16 v16, 0x0

    .line 162
    .local v16, notification:Landroid/app/Notification;
    const/16 v17, 0x0

    .line 164
    .local v17, notificationCreated:I
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 166
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 227
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 229
    if-lez v17, :cond_2

    .line 235
    const-string v3, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 234
    check-cast v18, Landroid/app/NotificationManager;

    .line 246
    .local v18, notificationManager:Landroid/app/NotificationManager;
    new-instance v20, Landroid/content/Intent;

    const-class v3, Lnitro/phonestats/Main;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v20, typeIntent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 248
    const/4 v4, 0x0

    .line 247
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 250
    .local v12, contentIntent:Landroid/app/PendingIntent;
    const/4 v3, 0x2

    move/from16 v0, v17

    if-ne v0, v3, :cond_8

    .line 252
    const v3, 0x7f070180

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 253
    const v4, 0x7f070181

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 251
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4, v12}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 254
    invoke-direct/range {p0 .. p1}, Lnitro/phonestats/core/traffic/Updater;->cutoffDataConnection(Landroid/content/Context;)V

    .line 263
    :cond_1
    :goto_1
    const/4 v3, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 264
    const/4 v3, 0x5

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 268
    .end local v12           #contentIntent:Landroid/app/PendingIntent;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v16           #notification:Landroid/app/Notification;
    .end local v17           #notificationCreated:I
    .end local v18           #notificationManager:Landroid/app/NotificationManager;
    .end local v20           #typeIntent:Landroid/content/Intent;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "nitro.phonestats.ACTION_UPDATE_COUNTERS_PLUS_WIDGET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    const-string v3, "UPDATE WIDGET FROM TRAFFIC UPDATER"

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 274
    new-instance v14, Landroid/content/Intent;

    const-string v3, "nitro.phonestats.action.APPWIDGET_MANUEL_UPDATE"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v14, intent2:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 277
    .end local v14           #intent2:Landroid/content/Intent;
    :cond_3
    return-void

    .line 167
    .restart local v13       #cursor:Landroid/database/Cursor;
    .restart local v16       #notification:Landroid/app/Notification;
    .restart local v17       #notificationCreated:I
    :cond_4
    const/4 v3, 0x6

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 169
    .local v8, bytesLimit:J
    const-wide/16 v3, 0x0

    cmp-long v3, v8, v3

    if-lez v3, :cond_6

    .line 172
    const/16 v3, 0x8

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 173
    .local v19, oldNotificationLevel:I
    move/from16 v15, v19

    .line 175
    .local v15, newNotificationLevel:I
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    add-long v10, v3, v5

    .line 176
    .local v10, bytesTotal:J
    const-wide/high16 v3, 0x3ff0

    long-to-double v5, v10

    mul-double/2addr v3, v5

    long-to-double v5, v8

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4059

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v21

    .line 178
    .local v21, usage:J
    invoke-static/range {p1 .. p1}, Lnitro/phonestats/settings/core/Settings;->useDataLimit(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static/range {p1 .. p1}, Lnitro/phonestats/settings/core/Settings;->useDataNotifications(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 181
    move/from16 v0, v23

    int-to-long v3, v0

    cmp-long v3, v21, v3

    if-ltz v3, :cond_7

    .line 182
    const/4 v3, 0x2

    move/from16 v0, v19

    if-ge v0, v3, :cond_7

    .line 184
    const/4 v15, 0x2

    .line 185
    const/4 v3, 0x2

    move/from16 v0, v17

    if-ge v0, v3, :cond_5

    .line 187
    new-instance v16, Landroid/app/Notification;

    .line 188
    .end local v16           #notification:Landroid/app/Notification;
    const v3, 0x108008a

    .line 189
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 187
    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 190
    .restart local v16       #notification:Landroid/app/Notification;
    const/16 v17, 0x2

    .line 204
    :cond_5
    :goto_3
    move/from16 v0, v19

    if-le v15, v0, :cond_6

    .line 209
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 212
    .local v25, values:Landroid/content/ContentValues;
    const-string v3, "NotificationLevel"

    .line 214
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 211
    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    sget-object v3, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 215
    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 223
    .end local v10           #bytesTotal:J
    .end local v15           #newNotificationLevel:I
    .end local v19           #oldNotificationLevel:I
    .end local v21           #usage:J
    .end local v25           #values:Landroid/content/ContentValues;
    :cond_6
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 192
    .restart local v10       #bytesTotal:J
    .restart local v15       #newNotificationLevel:I
    .restart local v19       #oldNotificationLevel:I
    .restart local v21       #usage:J
    :cond_7
    move/from16 v0, v24

    int-to-long v3, v0

    cmp-long v3, v21, v3

    if-ltz v3, :cond_5

    .line 193
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ge v0, v3, :cond_5

    .line 195
    const/4 v15, 0x1

    .line 196
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ge v0, v3, :cond_5

    .line 198
    new-instance v16, Landroid/app/Notification;

    .line 199
    .end local v16           #notification:Landroid/app/Notification;
    const v3, 0x108008a

    .line 200
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 198
    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 201
    .restart local v16       #notification:Landroid/app/Notification;
    const/16 v17, 0x1

    goto :goto_3

    .line 256
    .end local v8           #bytesLimit:J
    .end local v10           #bytesTotal:J
    .end local v15           #newNotificationLevel:I
    .end local v19           #oldNotificationLevel:I
    .end local v21           #usage:J
    .restart local v12       #contentIntent:Landroid/app/PendingIntent;
    .restart local v18       #notificationManager:Landroid/app/NotificationManager;
    .restart local v20       #typeIntent:Landroid/content/Intent;
    :cond_8
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_1

    .line 258
    const v3, 0x7f07017e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 259
    const v4, 0x7f07017f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 257
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4, v12}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 268
    .end local v12           #contentIntent:Landroid/app/PendingIntent;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v16           #notification:Landroid/app/Notification;
    .end local v17           #notificationCreated:I
    .end local v18           #notificationManager:Landroid/app/NotificationManager;
    .end local v20           #typeIntent:Landroid/content/Intent;
    :cond_9
    const-string v3, "no action"

    goto/16 :goto_2
.end method
