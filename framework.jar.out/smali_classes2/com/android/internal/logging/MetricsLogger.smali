.class public Lcom/android/internal/logging/MetricsLogger;
.super Ljava/lang/Object;
.source "MetricsLogger.java"


# static fields
.field public static final LOGTAG:I = 0x80004

.field public static final VIEW_UNKNOWN:I

.field private static sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static action(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 175
    return-void
.end method

.method public static action(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 181
    return-void
.end method

.method public static action(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(ILjava/lang/String;)V

    .line 199
    return-void
.end method

.method public static action(Landroid/content/Context;IZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(IZ)V

    .line 187
    return-void
.end method

.method public static action(Landroid/metrics/LogMaker;)V
    .locals 1
    .param p0, "content"    # Landroid/metrics/LogMaker;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 193
    return-void
.end method

.method public static count(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 208
    return-void
.end method

.method private static getLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    .line 37
    sget-object v0, Lcom/android/internal/logging/MetricsLogger;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    sput-object v0, Lcom/android/internal/logging/MetricsLogger;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 40
    :cond_0
    sget-object v0, Lcom/android/internal/logging/MetricsLogger;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public static hidden(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 155
    return-void
.end method

.method public static histogram(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bucket"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 217
    return-void
.end method

.method public static visibility(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "vis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 169
    return-void
.end method

.method public static visibility(Landroid/content/Context;IZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "visibile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 162
    return-void
.end method

.method public static visible(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 149
    return-void
.end method


# virtual methods
.method public action(I)V
    .locals 2
    .param p1, "category"    # I

    .line 92
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiAction(ILjava/lang/String;)V

    .line 93
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 94
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public action(II)V
    .locals 2
    .param p1, "category"    # I
    .param p2, "value"    # I

    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiAction(ILjava/lang/String;)V

    .line 100
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 101
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public action(ILjava/lang/String;)V
    .locals 2
    .param p1, "category"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 115
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiAction(ILjava/lang/String;)V

    .line 119
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    .line 120
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public action(IZ)V
    .locals 2
    .param p1, "category"    # I
    .param p2, "value"    # Z

    .line 107
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiAction(ILjava/lang/String;)V

    .line 108
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 109
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public count(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 127
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiCount(Ljava/lang/String;I)V

    .line 128
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x323

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 129
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setCounterName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setCounterValue(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public hidden(I)V
    .locals 2
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 68
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiViewVisibility(II)V

    .line 72
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x2

    .line 73
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public histogram(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bucket"    # I

    .line 137
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiHistogram(Ljava/lang/String;I)V

    .line 138
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x324

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 139
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setCounterName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setCounterBucket(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 141
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCounterValue(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method protected saveLog([Ljava/lang/Object;)V
    .locals 0
    .param p1, "rep"    # [Ljava/lang/Object;

    .line 44
    invoke-static {p1}, Lcom/android/internal/logging/EventLogTags;->writeSysuiMultiAction([Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public visibility(II)V
    .locals 1
    .param p1, "category"    # I
    .param p2, "vis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 88
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 89
    return-void
.end method

.method public visibility(IZ)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "visibile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 79
    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 84
    :goto_0
    return-void
.end method

.method public visible(I)V
    .locals 2
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 58
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    :goto_0
    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiViewVisibility(II)V

    .line 62
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public write(Landroid/metrics/LogMaker;)V
    .locals 1
    .param p1, "content"    # Landroid/metrics/LogMaker;

    .line 51
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    .line 55
    return-void
.end method
