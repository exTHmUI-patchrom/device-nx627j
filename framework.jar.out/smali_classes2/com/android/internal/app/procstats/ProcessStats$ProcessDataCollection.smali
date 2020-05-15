.class public final Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessDataCollection"
.end annotation


# instance fields
.field public avgPss:J

.field public avgRss:J

.field public avgUss:J

.field public maxPss:J

.field public maxRss:J

.field public maxUss:J

.field final memStates:[I

.field public minPss:J

.field public minRss:J

.field public minUss:J

.field public numPss:J

.field final procStates:[I

.field final screenStates:[I

.field public totalTime:J


# direct methods
.method public constructor <init>([I[I[I)V
    .locals 0
    .param p1, "_screenStates"    # [I
    .param p2, "_memStates"    # [I
    .param p3, "_procStates"    # [I

    .line 1890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1891
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    .line 1892
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    .line 1893
    iput-object p3, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    .line 1894
    return-void
.end method


# virtual methods
.method print(Ljava/io/PrintWriter;JZ)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "overallTime"    # J
    .param p4, "full"    # Z

    .line 1897
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    .line 1898
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1900
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v0, v0

    long-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    .line 1901
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1902
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1903
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1904
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1905
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1906
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1907
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1908
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1909
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1910
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1911
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1912
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1913
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1914
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1915
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1916
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1917
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1918
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1919
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1920
    if-eqz p4, :cond_1

    .line 1921
    const-string v0, " over "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1922
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1924
    :cond_1
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1926
    :cond_2
    return-void
.end method
