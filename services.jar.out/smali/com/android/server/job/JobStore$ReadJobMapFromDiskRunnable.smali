.class final Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadJobMapFromDiskRunnable"
.end annotation


# instance fields
.field private final jobSet:Lcom/android/server/job/JobStore$JobSet;

.field private final rtcGood:Z

.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V
    .locals 0
    .param p2, "jobSet"    # Lcom/android/server/job/JobStore$JobSet;
    .param p3, "rtcIsGood"    # Z

    .line 585
    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 587
    iput-boolean p3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    .line 588
    return-void
.end method

.method private buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 882
    const-string/jumbo v0, "jobid"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 883
    .local v0, "jobId":I
    const-string/jumbo v2, "package"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 884
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "class"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 885
    .local v1, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    .local v3, "cname":Landroid/content/ComponentName;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v0, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object v4
.end method

.method private buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 893
    const-string/jumbo v0, "net-capabilities"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "netCapabilities":Ljava/lang/String;
    const-string/jumbo v2, "net-unwanted-capabilities"

    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 896
    .local v2, "netUnwantedCapabilities":Ljava/lang/String;
    const-string/jumbo v3, "net-transport-types"

    invoke-interface {p2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 897
    .local v3, "netTransportTypes":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 898
    new-instance v5, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v5}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v5

    .line 899
    .local v5, "request":Landroid/net/NetworkRequest;
    if-eqz v2, :cond_0

    .line 900
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    .line 901
    :cond_0
    iget-object v6, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getUnwantedCapabilities()[I

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v6

    .line 904
    .local v6, "unwantedCapabilities":J
    :goto_0
    iget-object v8, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 905
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v9

    .line 906
    invoke-static {v6, v7}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v10

    .line 904
    invoke-virtual {v8, v9, v10}, Landroid/net/NetworkCapabilities;->setCapabilities([I[I)V

    .line 907
    iget-object v8, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 908
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v9

    .line 907
    invoke-virtual {v8, v9}, Landroid/net/NetworkCapabilities;->setTransportTypes([I)V

    .line 909
    invoke-virtual {p1, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 910
    .end local v5    # "request":Landroid/net/NetworkRequest;
    .end local v6    # "unwantedCapabilities":J
    goto :goto_1

    .line 912
    :cond_1
    const-string v5, "connectivity"

    invoke-interface {p2, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 913
    .local v5, "val":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 914
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 916
    :cond_2
    const-string/jumbo v6, "metered"

    invoke-interface {p2, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 917
    if-eqz v5, :cond_3

    .line 918
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 920
    :cond_3
    const-string/jumbo v6, "unmetered"

    invoke-interface {p2, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 921
    if-eqz v5, :cond_4

    .line 922
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 924
    :cond_4
    const-string/jumbo v6, "not-roaming"

    invoke-interface {p2, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 925
    if-eqz v5, :cond_5

    .line 926
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 930
    .end local v5    # "val":Ljava/lang/String;
    :cond_5
    :goto_1
    const-string v5, "idle"

    invoke-interface {p2, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 931
    .restart local v5    # "val":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 932
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 934
    :cond_6
    const-string v6, "charging"

    invoke-interface {p2, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 935
    .end local v5    # "val":Ljava/lang/String;
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 936
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 938
    :cond_7
    return-void
.end method

.method private buildExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 17
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 989
    move-object/from16 v0, p1

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 990
    .local v1, "nowWallclock":J
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    .line 992
    .local v3, "nowElapsed":J
    const-wide/16 v5, 0x0

    .line 993
    .local v5, "earliestRunTimeElapsed":J
    const-wide v7, 0x7fffffffffffffffL

    .line 994
    .local v7, "latestRunTimeElapsed":J
    const-string v9, "deadline"

    const/4 v10, 0x0

    invoke-interface {v0, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 995
    .local v9, "val":Ljava/lang/String;
    const-wide/16 v11, 0x0

    if-eqz v9, :cond_0

    .line 996
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 997
    .local v13, "latestRuntimeWallclock":J
    move-wide v15, v5

    sub-long v5, v13, v1

    .line 998
    .end local v5    # "earliestRunTimeElapsed":J
    .local v15, "earliestRunTimeElapsed":J
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 999
    .local v5, "maxDelayElapsed":J
    add-long v7, v3, v5

    .end local v5    # "maxDelayElapsed":J
    .end local v13    # "latestRuntimeWallclock":J
    goto :goto_0

    .line 1001
    .end local v15    # "earliestRunTimeElapsed":J
    .local v5, "earliestRunTimeElapsed":J
    :cond_0
    move-wide v15, v5

    .end local v5    # "earliestRunTimeElapsed":J
    .restart local v15    # "earliestRunTimeElapsed":J
    :goto_0
    const-string v5, "delay"

    invoke-interface {v0, v10, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1002
    .end local v9    # "val":Ljava/lang/String;
    .local v5, "val":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1003
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1004
    .local v9, "earliestRuntimeWallclock":J
    sub-long v13, v9, v1

    .line 1005
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 1006
    .local v11, "minDelayElapsed":J
    add-long v9, v3, v11

    .end local v11    # "minDelayElapsed":J
    .end local v15    # "earliestRunTimeElapsed":J
    .local v9, "earliestRunTimeElapsed":J
    goto :goto_1

    .line 1009
    .end local v9    # "earliestRunTimeElapsed":J
    .restart local v15    # "earliestRunTimeElapsed":J
    :cond_1
    move-wide v9, v15

    .end local v15    # "earliestRunTimeElapsed":J
    .restart local v9    # "earliestRunTimeElapsed":J
    :goto_1
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6
.end method

.method private buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 969
    const-string v0, "delay"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 971
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 972
    :cond_0
    const-wide/16 v2, 0x0

    .line 973
    .local v2, "earliestRunTimeRtc":J
    :goto_0
    const-string v4, "deadline"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 974
    if-eqz v0, :cond_1

    .line 975
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    .line 976
    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    .line 977
    .local v4, "latestRunTimeRtc":J
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 945
    const-string/jumbo v0, "initial-backoff"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 947
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 948
    .local v2, "initialBackoff":J
    const-string v4, "backoff-policy"

    invoke-interface {p2, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 949
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 950
    .local v1, "backoffPolicy":I
    invoke-virtual {p1, v2, v3, v1}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 952
    .end local v1    # "backoffPolicy":I
    .end local v2    # "initialBackoff":J
    :cond_0
    return-void
.end method

.method private readJobMapImpl(Ljava/io/FileInputStream;Z)Ljava/util/List;
    .locals 10
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .param p2, "rtcIsGood"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 639
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 641
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 642
    .local v1, "eventType":I
    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    .line 644
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 645
    const-string v2, "JobStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 647
    :cond_0
    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    .line 648
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    const-string v2, "JobStore"

    const-string v3, "No persisted jobs."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_1
    return-object v4

    .line 654
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 655
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "job-info"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 656
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v6, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_0
    const-string/jumbo v7, "version"

    invoke-interface {v0, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 660
    .local v7, "version":I
    if-eqz v7, :cond_3

    .line 661
    const-string v2, "JobStore"

    const-string v3, "Invalid version number, aborting jobs file read."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    return-object v4

    .line 667
    .end local v7    # "version":I
    :cond_3
    nop

    .line 668
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 671
    :cond_4
    if-ne v1, v2, :cond_8

    .line 672
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 674
    .end local v5    # "tagName":Ljava/lang/String;
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "job"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 675
    invoke-direct {p0, p2, v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    .line 676
    .local v5, "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v5, :cond_6

    .line 677
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 678
    const-string v7, "JobStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read out "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_5
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 682
    :cond_6
    const-string v7, "JobStore"

    const-string v8, "Error reading job from file."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    .end local v5    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_7
    :goto_1
    move-object v5, v4

    .line 686
    .end local v4    # "tagName":Ljava/lang/String;
    .local v5, "tagName":Ljava/lang/String;
    :cond_8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 687
    if-ne v1, v3, :cond_4

    .line 688
    return-object v6

    .line 664
    :catch_0
    move-exception v2

    .line 665
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "JobStore"

    const-string v7, "Invalid version number, aborting jobs file read."

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return-object v4

    .line 690
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_9
    return-object v4
.end method

.method private restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;
    .locals 46
    .param p1, "rtcIsGood"    # Z
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 704
    move-object/from16 v2, p2

    const/4 v0, 0x0

    move v3, v0

    .line 708
    .local v3, "internalFlags":I
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 709
    .local v5, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 710
    const-string/jumbo v7, "uid"

    invoke-interface {v2, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 712
    .local v7, "uid":I
    const-string/jumbo v8, "priority"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 713
    .local v8, "val":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 714
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    .line 716
    :cond_0
    const-string v9, "flags"

    invoke-interface {v2, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 717
    if-eqz v8, :cond_1

    .line 718
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    .line 720
    :cond_1
    const-string/jumbo v9, "internalFlags"

    invoke-interface {v2, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 721
    if-eqz v8, :cond_2

    .line 722
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_e

    move v3, v9

    .line 724
    :cond_2
    :try_start_1
    const-string/jumbo v9, "sourceUserId"

    invoke-interface {v2, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 725
    if-nez v8, :cond_3

    const/4 v9, -0x1

    goto :goto_0

    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :goto_0
    move v13, v9

    .line 727
    .local v13, "sourceUserId":I
    const-string/jumbo v9, "lastSuccessfulRunTime"

    invoke-interface {v2, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 728
    if-nez v8, :cond_4

    const-wide/16 v21, 0x0

    goto :goto_1

    :cond_4
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-wide/from16 v21, v11

    .line 730
    .local v21, "lastSuccessfulRunTime":J
    :goto_1
    const-string/jumbo v11, "lastFailedRunTime"

    invoke-interface {v2, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 731
    if-nez v8, :cond_5

    const-wide/16 v23, 0x0

    goto :goto_2

    :cond_5
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_d

    move-wide/from16 v23, v11

    .line 735
    .end local v8    # "val":Ljava/lang/String;
    .local v23, "lastFailedRunTime":J
    :goto_2
    nop

    .line 734
    nop

    .line 737
    const-string/jumbo v8, "sourcePackageName"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 738
    .local v8, "sourcePackageName":Ljava/lang/String;
    const-string/jumbo v11, "sourceTag"

    invoke-interface {v2, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v11

    .line 743
    .local v16, "sourceTag":Ljava/lang/String;
    :goto_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 744
    .local v11, "eventType":I
    const/4 v12, 0x4

    if-eq v11, v12, :cond_19

    .line 746
    const/4 v14, 0x2

    if-ne v11, v14, :cond_18

    const-string v15, "constraints"

    .line 747
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 749
    move/from16 v42, v3

    move-object v6, v5

    move v3, v7

    move/from16 v33, v13

    move-object v7, v4

    goto/16 :goto_10

    .line 752
    :cond_6
    :try_start_2
    invoke-direct {v1, v5, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_c

    .line 756
    nop

    .line 757
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 761
    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 762
    if-eq v11, v12, :cond_17

    .line 763
    if-eq v11, v14, :cond_7

    .line 764
    return-object v4

    .line 770
    :cond_7
    :try_start_3
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_b

    move-object v10, v9

    .line 776
    .local v10, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    nop

    .line 775
    nop

    .line 778
    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    move/from16 v29, v13

    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 779
    .end local v13    # "sourceUserId":I
    .local v12, "elapsedNow":J
    .local v29, "sourceUserId":I
    invoke-static {v10, v12, v13}, Lcom/android/server/job/JobStore;->access$500(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v9

    .line 781
    .local v9, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string/jumbo v15, "periodic"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 783
    :try_start_4
    const-string/jumbo v14, "period"

    invoke-interface {v2, v4, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 784
    .local v14, "val":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v32, v17

    .line 785
    .local v32, "periodMillis":J
    const-string v15, "flex"

    invoke-interface {v2, v4, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v14, v15

    .line 786
    if-eqz v14, :cond_8

    :try_start_5
    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v17
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    .line 811
    .end local v14    # "val":Ljava/lang/String;
    .end local v32    # "periodMillis":J
    :catch_0
    move-exception v0

    move/from16 v42, v3

    move-object/from16 v37, v5

    move v3, v7

    move-object/from16 v43, v10

    move/from16 v44, v11

    goto/16 :goto_7

    .line 786
    .restart local v14    # "val":Ljava/lang/String;
    .restart local v32    # "periodMillis":J
    :cond_8
    move-wide/from16 v17, v32

    :goto_5
    move-wide/from16 v34, v17

    .line 787
    .local v34, "flexMillis":J
    move/from16 v36, v7

    move-wide/from16 v0, v32

    move-wide/from16 v6, v34

    :try_start_6
    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 792
    .end local v7    # "uid":I
    .end local v32    # "periodMillis":J
    .end local v34    # "flexMillis":J
    .local v0, "periodMillis":J
    .local v6, "flexMillis":J
    .local v36, "uid":I
    iget-object v15, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v17
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    add-long v32, v12, v0

    add-long v32, v32, v6

    cmp-long v15, v17, v32

    if-lez v15, :cond_9

    .line 793
    add-long v34, v12, v6

    move-object/from16 v37, v5

    add-long v4, v34, v0

    .line 795
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .local v4, "clampedLateRuntimeElapsed":J
    .local v37, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    move-wide/from16 v38, v0

    sub-long v0, v4, v6

    .line 797
    .local v0, "clampedEarlyRuntimeElapsed":J
    .local v38, "periodMillis":J
    :try_start_7
    const-string v15, "JobStore"

    move-wide/from16 v40, v6

    const-string v6, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    .line 797
    .end local v6    # "flexMillis":J
    .local v40, "flexMillis":J
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    .line 800
    move/from16 v42, v3

    move/from16 v3, v36

    :try_start_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 800
    .end local v36    # "uid":I
    .local v3, "uid":I
    .local v42, "internalFlags":I
    const/16 v18, 0x0

    aput-object v17, v7, v18
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3

    move-object/from16 v43, v10

    :try_start_9
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 800
    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v43, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    check-cast v10, Ljava/lang/Long;

    .line 801
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v17
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2

    const-wide/16 v19, 0x3e8

    move/from16 v44, v11

    :try_start_a
    div-long v10, v17, v19

    .line 801
    .end local v11    # "eventType":I
    .local v44, "eventType":I
    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v10

    const/16 v17, 0x1

    aput-object v10, v7, v17

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    .line 802
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    div-long v10, v10, v19

    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v7, v11

    div-long v10, v0, v19

    .line 803
    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v7, v11

    div-long v10, v4, v19

    .line 805
    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    aput-object v10, v7, v11

    .line 798
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 797
    invoke-static {v15, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    nop

    .line 809
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_1

    move-object v0, v6

    .line 814
    .end local v4    # "clampedLateRuntimeElapsed":J
    .end local v9    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v14    # "val":Ljava/lang/String;
    .end local v38    # "periodMillis":J
    .end local v40    # "flexMillis":J
    .local v0, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object v9, v0

    goto :goto_6

    .line 811
    .end local v0    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v9    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_1
    move-exception v0

    goto :goto_7

    .line 811
    .end local v44    # "eventType":I
    .restart local v11    # "eventType":I
    :catch_2
    move-exception v0

    move/from16 v44, v11

    .line 811
    .end local v11    # "eventType":I
    .restart local v44    # "eventType":I
    goto :goto_7

    .line 811
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v44    # "eventType":I
    .restart local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11    # "eventType":I
    :catch_3
    move-exception v0

    move-object/from16 v43, v10

    move/from16 v44, v11

    .line 811
    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "eventType":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v44    # "eventType":I
    goto :goto_7

    .line 811
    .end local v42    # "internalFlags":I
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v44    # "eventType":I
    .local v3, "internalFlags":I
    .restart local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11    # "eventType":I
    .restart local v36    # "uid":I
    :catch_4
    move-exception v0

    move/from16 v42, v3

    move-object/from16 v43, v10

    move/from16 v44, v11

    move/from16 v3, v36

    .line 811
    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "eventType":I
    .end local v36    # "uid":I
    .local v3, "uid":I
    .restart local v42    # "internalFlags":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v44    # "eventType":I
    goto :goto_7

    .line 814
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v42    # "internalFlags":I
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v44    # "eventType":I
    .local v3, "internalFlags":I
    .restart local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11    # "eventType":I
    .restart local v36    # "uid":I
    :cond_9
    move/from16 v42, v3

    move-object/from16 v37, v5

    move-object/from16 v43, v10

    move/from16 v44, v11

    move/from16 v3, v36

    .line 835
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "eventType":I
    .end local v36    # "uid":I
    .local v3, "uid":I
    .restart local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v42    # "internalFlags":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v44    # "eventType":I
    :goto_6
    move-object v0, v9

    move-object/from16 v6, v37

    const-wide/16 v4, 0x0

    goto/16 :goto_9

    .line 811
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v42    # "internalFlags":I
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v44    # "eventType":I
    .local v3, "internalFlags":I
    .restart local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11    # "eventType":I
    .restart local v36    # "uid":I
    :catch_5
    move-exception v0

    move/from16 v42, v3

    move-object/from16 v37, v5

    move-object/from16 v43, v10

    move/from16 v44, v11

    move/from16 v3, v36

    .line 811
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "eventType":I
    .end local v36    # "uid":I
    .local v3, "uid":I
    .restart local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v42    # "internalFlags":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v44    # "eventType":I
    goto :goto_7

    .line 811
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v42    # "internalFlags":I
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v44    # "eventType":I
    .local v3, "internalFlags":I
    .restart local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v7    # "uid":I
    .restart local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11    # "eventType":I
    :catch_6
    move-exception v0

    move/from16 v42, v3

    move-object/from16 v37, v5

    move v3, v7

    move-object/from16 v43, v10

    move/from16 v44, v11

    .line 812
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7    # "uid":I
    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "eventType":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .local v3, "uid":I
    .restart local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v42    # "internalFlags":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v44    # "eventType":I
    :goto_7
    const-string v1, "JobStore"

    const-string v4, "Error reading periodic execution criteria, skipping."

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v1, 0x0

    return-object v1

    .line 815
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v42    # "internalFlags":I
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v44    # "eventType":I
    .local v3, "internalFlags":I
    .restart local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v7    # "uid":I
    .restart local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11    # "eventType":I
    :cond_a
    move/from16 v42, v3

    move-object/from16 v37, v5

    move v3, v7

    move-object/from16 v43, v10

    move/from16 v44, v11

    .line 815
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7    # "uid":I
    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "eventType":I
    .local v3, "uid":I
    .restart local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v42    # "internalFlags":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v44    # "eventType":I
    const-string/jumbo v0, "one-off"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 817
    :try_start_b
    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_a

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_b

    .line 818
    :try_start_c
    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_8

    sub-long/2addr v0, v12

    move-object/from16 v6, v37

    :try_start_d
    invoke-virtual {v6, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_7

    .line 818
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .local v6, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    goto :goto_8

    .line 824
    :catch_7
    move-exception v0

    move-wide/from16 v31, v12

    move/from16 v33, v29

    move-object/from16 v29, v43

    goto/16 :goto_f

    .line 824
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    :catch_8
    move-exception v0

    move-object/from16 v6, v37

    move-wide/from16 v31, v12

    move/from16 v33, v29

    move-object/from16 v29, v43

    .line 824
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    goto/16 :goto_f

    .line 820
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    :cond_b
    move-object/from16 v6, v37

    .line 820
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    :goto_8
    :try_start_e
    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_9

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v0, v0, v10

    if-eqz v0, :cond_c

    .line 821
    :try_start_f
    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 822
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v12

    .line 821
    invoke-virtual {v6, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_7

    .line 827
    :cond_c
    nop

    .line 835
    move-object v0, v9

    .line 835
    .end local v9    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v0, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_9
    move-object/from16 v1, p0

    invoke-direct {v1, v6, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 837
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 841
    :goto_a
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 842
    .end local v44    # "eventType":I
    .local v7, "eventType":I
    const/4 v10, 0x4

    if-eq v7, v10, :cond_13

    .line 843
    const/4 v14, 0x2

    if-ne v7, v14, :cond_11

    const-string v9, "extras"

    .line 844
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 845
    move-wide/from16 v31, v12

    move/from16 v33, v29

    move-object/from16 v29, v43

    goto/16 :goto_e

    .line 851
    :cond_d
    invoke-static/range {p2 .. p2}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v11

    .line 852
    .local v11, "extras":Landroid/os/PersistableBundle;
    invoke-virtual {v6, v11}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 853
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 856
    const-string v9, "android"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    if-eqz v11, :cond_e

    const-string v9, "SyncManagerJob"

    .line 858
    const/4 v15, 0x0

    invoke-virtual {v11, v9, v15}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 859
    const-string/jumbo v9, "owningPackage"

    invoke-virtual {v11, v9, v8}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 860
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 861
    const-string v9, "JobStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Fixing up sync job source package name from \'android\' to \'"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\'"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_e
    move-object v10, v8

    .line 867
    .end local v8    # "sourcePackageName":Ljava/lang/String;
    .local v10, "sourcePackageName":Ljava/lang/String;
    const-class v8, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/server/job/JobSchedulerInternal;

    .line 868
    .local v9, "service":Lcom/android/server/job/JobSchedulerInternal;
    move/from16 v8, v29

    invoke-static {v10, v8, v12, v13}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v27

    .line 870
    .end local v29    # "sourceUserId":I
    .local v8, "sourceUserId":I
    .local v27, "appBucket":I
    if-eqz v9, :cond_f

    invoke-interface {v9}, Lcom/android/server/job/JobSchedulerInternal;->currentHeartbeat()J

    move-result-wide v4

    :goto_b
    move-wide v14, v4

    goto :goto_c

    :cond_f
    goto :goto_b

    .line 871
    .local v14, "currentHeartbeat":J
    :goto_c
    new-instance v4, Lcom/android/server/job/controllers/JobStatus;

    .line 872
    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v5

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 874
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 876
    if-eqz p1, :cond_10

    const/16 v25, 0x0

    goto :goto_d

    :cond_10
    move-object/from16 v25, v43

    :goto_d
    move/from16 v26, v8

    move-object v8, v4

    .line 876
    .end local v8    # "sourceUserId":I
    .local v26, "sourceUserId":I
    move-object/from16 v28, v9

    move-object v9, v5

    .line 876
    .end local v9    # "service":Lcom/android/server/job/JobSchedulerInternal;
    .local v28, "service":Lcom/android/server/job/JobSchedulerInternal;
    move-object v5, v10

    move-object/from16 v29, v43

    move v10, v3

    .line 876
    .end local v10    # "sourcePackageName":Ljava/lang/String;
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v5, "sourcePackageName":Ljava/lang/String;
    .local v29, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v30, v11

    move-object v11, v5

    .line 876
    .end local v11    # "extras":Landroid/os/PersistableBundle;
    .local v30, "extras":Landroid/os/PersistableBundle;
    move-wide/from16 v31, v12

    move/from16 v12, v26

    .line 876
    .end local v12    # "elapsedNow":J
    .local v31, "elapsedNow":J
    move/from16 v33, v26

    move/from16 v13, v27

    .line 876
    .end local v26    # "sourceUserId":I
    .local v33, "sourceUserId":I
    move/from16 v26, v42

    invoke-direct/range {v8 .. v26}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IIJLjava/lang/String;JJJJLandroid/util/Pair;I)V

    .line 877
    .local v4, "js":Lcom/android/server/job/controllers/JobStatus;
    return-object v4

    .line 845
    .end local v4    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v5    # "sourcePackageName":Ljava/lang/String;
    .end local v14    # "currentHeartbeat":J
    .end local v27    # "appBucket":I
    .end local v28    # "service":Lcom/android/server/job/JobSchedulerInternal;
    .end local v30    # "extras":Landroid/os/PersistableBundle;
    .end local v31    # "elapsedNow":J
    .end local v33    # "sourceUserId":I
    .local v8, "sourcePackageName":Ljava/lang/String;
    .restart local v12    # "elapsedNow":J
    .local v29, "sourceUserId":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_11
    move-wide/from16 v31, v12

    move/from16 v33, v29

    move-object/from16 v29, v43

    .line 845
    .end local v12    # "elapsedNow":J
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v29, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v31    # "elapsedNow":J
    .restart local v33    # "sourceUserId":I
    :goto_e
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 846
    const-string v4, "JobStore"

    const-string v5, "Error reading extras, skipping."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_12
    const/4 v4, 0x0

    return-object v4

    .line 841
    .end local v31    # "elapsedNow":J
    .end local v33    # "sourceUserId":I
    .restart local v12    # "elapsedNow":J
    .local v29, "sourceUserId":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_13
    move/from16 v33, v29

    move/from16 v44, v7

    .line 841
    .end local v12    # "elapsedNow":J
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v29, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v31    # "elapsedNow":J
    .restart local v33    # "sourceUserId":I
    goto/16 :goto_a

    .line 824
    .end local v0    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v7    # "eventType":I
    .end local v31    # "elapsedNow":J
    .end local v33    # "sourceUserId":I
    .local v9, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v12    # "elapsedNow":J
    .local v29, "sourceUserId":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v44    # "eventType":I
    :catch_9
    move-exception v0

    move-wide/from16 v31, v12

    move/from16 v33, v29

    move-object/from16 v29, v43

    .line 824
    .end local v12    # "elapsedNow":J
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v29, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v31    # "elapsedNow":J
    .restart local v33    # "sourceUserId":I
    goto :goto_f

    .line 824
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v31    # "elapsedNow":J
    .end local v33    # "sourceUserId":I
    .restart local v12    # "elapsedNow":J
    .local v29, "sourceUserId":I
    .restart local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_a
    move-exception v0

    move-wide/from16 v31, v12

    move/from16 v33, v29

    move-object/from16 v6, v37

    move-object/from16 v29, v43

    .line 825
    .end local v12    # "elapsedNow":J
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .local v29, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v31    # "elapsedNow":J
    .restart local v33    # "sourceUserId":I
    :goto_f
    const-string v4, "JobStore"

    const-string v5, "Error reading job execution criteria, skipping."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v4, 0x0

    return-object v4

    .line 829
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v31    # "elapsedNow":J
    .end local v33    # "sourceUserId":I
    .restart local v12    # "elapsedNow":J
    .local v29, "sourceUserId":I
    .restart local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_14
    move-wide/from16 v31, v12

    move/from16 v33, v29

    move-object/from16 v6, v37

    move-object/from16 v29, v43

    .line 829
    .end local v12    # "elapsedNow":J
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .local v29, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v31    # "elapsedNow":J
    .restart local v33    # "sourceUserId":I
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 830
    const-string v0, "JobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid parameter tag, skipping - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_15
    const/4 v4, 0x0

    return-object v4

    .line 771
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v9    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v29    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v31    # "elapsedNow":J
    .end local v33    # "sourceUserId":I
    .end local v42    # "internalFlags":I
    .end local v44    # "eventType":I
    .local v3, "internalFlags":I
    .local v5, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .local v7, "uid":I
    .local v11, "eventType":I
    .restart local v13    # "sourceUserId":I
    :catch_b
    move-exception v0

    move/from16 v42, v3

    move-object v6, v5

    move v3, v7

    move/from16 v44, v11

    move/from16 v33, v13

    .line 771
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7    # "uid":I
    .end local v11    # "eventType":I
    .end local v13    # "sourceUserId":I
    .local v3, "uid":I
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v33    # "sourceUserId":I
    .restart local v42    # "internalFlags":I
    .restart local v44    # "eventType":I
    move-object v4, v0

    .line 772
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 773
    const-string v4, "JobStore"

    const-string v5, "Error parsing execution time parameters, skipping."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_16
    const/4 v7, 0x0

    return-object v7

    .line 761
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v33    # "sourceUserId":I
    .end local v42    # "internalFlags":I
    .end local v44    # "eventType":I
    .local v3, "internalFlags":I
    .restart local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v7    # "uid":I
    .restart local v11    # "eventType":I
    .restart local v13    # "sourceUserId":I
    :cond_17
    move/from16 v42, v3

    move v3, v7

    move/from16 v44, v11

    move-object v7, v4

    move v7, v3

    move/from16 v3, v42

    .line 761
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7    # "uid":I
    .end local v11    # "eventType":I
    .end local v13    # "sourceUserId":I
    .local v3, "uid":I
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v33    # "sourceUserId":I
    .restart local v42    # "internalFlags":I
    .restart local v44    # "eventType":I
    goto/16 :goto_4

    .line 753
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v33    # "sourceUserId":I
    .end local v42    # "internalFlags":I
    .end local v44    # "eventType":I
    .local v3, "internalFlags":I
    .restart local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v7    # "uid":I
    .restart local v11    # "eventType":I
    .restart local v13    # "sourceUserId":I
    :catch_c
    move-exception v0

    move/from16 v42, v3

    move-object v6, v5

    move v3, v7

    move/from16 v33, v13

    move-object v7, v4

    .line 753
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7    # "uid":I
    .end local v13    # "sourceUserId":I
    .local v3, "uid":I
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v33    # "sourceUserId":I
    .restart local v42    # "internalFlags":I
    move-object v4, v0

    .line 754
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v4, "JobStore"

    const-string v5, "Error reading constraints, skipping."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-object v7

    .line 749
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v33    # "sourceUserId":I
    .end local v42    # "internalFlags":I
    .local v3, "internalFlags":I
    .restart local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v7    # "uid":I
    .restart local v13    # "sourceUserId":I
    :cond_18
    move/from16 v42, v3

    move-object v6, v5

    move v3, v7

    move/from16 v33, v13

    move-object v7, v4

    .line 749
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7    # "uid":I
    .end local v13    # "sourceUserId":I
    .local v3, "uid":I
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v33    # "sourceUserId":I
    .restart local v42    # "internalFlags":I
    :goto_10
    return-object v7

    .line 738
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v11    # "eventType":I
    .end local v33    # "sourceUserId":I
    .end local v42    # "internalFlags":I
    .local v3, "internalFlags":I
    .restart local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v7    # "uid":I
    .restart local v13    # "sourceUserId":I
    :cond_19
    move/from16 v42, v3

    const/4 v4, 0x0

    .line 738
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7    # "uid":I
    .end local v13    # "sourceUserId":I
    .local v3, "uid":I
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v33    # "sourceUserId":I
    .restart local v42    # "internalFlags":I
    goto/16 :goto_3

    .line 732
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v8    # "sourcePackageName":Ljava/lang/String;
    .end local v16    # "sourceTag":Ljava/lang/String;
    .end local v21    # "lastSuccessfulRunTime":J
    .end local v23    # "lastFailedRunTime":J
    .end local v33    # "sourceUserId":I
    .end local v42    # "internalFlags":I
    .local v3, "internalFlags":I
    :catch_d
    move-exception v0

    move/from16 v42, v3

    .line 732
    .end local v3    # "internalFlags":I
    .restart local v42    # "internalFlags":I
    goto :goto_11

    .line 732
    .end local v42    # "internalFlags":I
    .restart local v3    # "internalFlags":I
    :catch_e
    move-exception v0

    .line 733
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_11
    const-string v4, "JobStore"

    const-string v5, "Error parsing job\'s required fields, skipping"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v4, 0x0

    return-object v4
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, "numJobs":I
    const/4 v1, 0x0

    .line 594
    .local v1, "numSystemJobs":I
    const/4 v2, 0x0

    move v3, v2

    .line 597
    .local v3, "numSyncJobs":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$200(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    .line 598
    .local v4, "fis":Ljava/io/FileInputStream;
    iget-object v5, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v5, v5, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 599
    :try_start_1
    iget-boolean v6, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    invoke-direct {p0, v4, v6}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/FileInputStream;Z)Ljava/util/List;

    move-result-object v6

    .line 600
    .local v6, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v6, :cond_1

    .line 601
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 602
    .local v7, "now":J
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v9

    .line 603
    .local v9, "am":Landroid/app/IActivityManager;
    nop

    .local v2, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 604
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/JobStatus;

    .line 605
    .local v10, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v10, v9}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked(Landroid/app/IActivityManager;)V

    .line 606
    iput-wide v7, v10, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 607
    iget-object v11, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v11, v10}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 609
    add-int/lit8 v0, v0, 0x1

    .line 610
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v11

    const/16 v12, 0x3e8

    if-ne v11, v12, :cond_0

    .line 611
    add-int/lit8 v1, v1, 0x1

    .line 612
    invoke-static {v10}, Lcom/android/server/job/JobStore;->access$100(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 613
    add-int/lit8 v3, v3, 0x1

    .line 603
    .end local v10    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 618
    .end local v2    # "i":I
    .end local v7    # "now":J
    .end local v9    # "am":Landroid/app/IActivityManager;
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v6

    .line 619
    .end local v6    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 627
    .end local v2    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "fis":Ljava/io/FileInputStream;
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iget v2, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v2, :cond_3

    .line 628
    :goto_1
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iput v0, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 629
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iput v1, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 630
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iput v3, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    goto :goto_2

    .line 618
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 627
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 624
    :catch_0
    move-exception v2

    .line 625
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "JobStore"

    const-string v5, "Error jobstore xml."

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 627
    .end local v2    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iget v2, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v2, :cond_3

    goto :goto_1

    .line 620
    :catch_1
    move-exception v2

    .line 621
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 622
    const-string v4, "JobStore"

    const-string v5, "Could not find jobs file, probably there was nothing to load."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 627
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iget v2, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v2, :cond_3

    goto :goto_1

    .line 633
    :cond_3
    :goto_2
    const-string v2, "JobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " jobs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return-void

    .line 627
    :goto_3
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iget v4, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v4, :cond_4

    .line 628
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v0, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 629
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v1, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 630
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v3, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    :cond_4
    throw v2
.end method
