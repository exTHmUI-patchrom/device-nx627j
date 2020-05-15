.class public final Landroid/app/usage/CacheQuotaHint$Builder;
.super Ljava/lang/Object;
.source "CacheQuotaHint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/CacheQuotaHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mQuota:J

.field private mUid:I

.field private mUsageStats:Landroid/app/usage/UsageStats;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/app/usage/CacheQuotaHint;)V
    .locals 2
    .param p1, "hint"    # Landroid/app/usage/CacheQuotaHint;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 111
    invoke-virtual {p1}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 112
    invoke-virtual {p1}, Landroid/app/usage/CacheQuotaHint;->getUsageStats()Landroid/app/usage/UsageStats;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/usage/CacheQuotaHint$Builder;->setUsageStats(Landroid/app/usage/UsageStats;)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 113
    invoke-virtual {p1}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 114
    return-void
.end method

.method static synthetic access$000(Landroid/app/usage/CacheQuotaHint$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/app/usage/CacheQuotaHint$Builder;

    .line 100
    iget-object v0, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/usage/CacheQuotaHint$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/usage/CacheQuotaHint$Builder;

    .line 100
    iget v0, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUid:I

    return v0
.end method

.method static synthetic access$200(Landroid/app/usage/CacheQuotaHint$Builder;)Landroid/app/usage/UsageStats;
    .locals 1
    .param p0, "x0"    # Landroid/app/usage/CacheQuotaHint$Builder;

    .line 100
    iget-object v0, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/usage/CacheQuotaHint$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/app/usage/CacheQuotaHint$Builder;

    .line 100
    iget-wide v0, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mQuota:J

    return-wide v0
.end method


# virtual methods
.method public build()Landroid/app/usage/CacheQuotaHint;
    .locals 1

    .line 139
    new-instance v0, Landroid/app/usage/CacheQuotaHint;

    invoke-direct {v0, p0}, Landroid/app/usage/CacheQuotaHint;-><init>(Landroid/app/usage/CacheQuotaHint$Builder;)V

    return-object v0
.end method

.method public setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;
    .locals 2
    .param p1, "quota"    # J

    .line 133
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 134
    iput-wide p1, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mQuota:J

    .line 135
    return-object p0
.end method

.method public setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;
    .locals 1
    .param p1, "uid"    # I

    .line 122
    const-string v0, "Proposed uid was negative."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 123
    iput p1, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUid:I

    .line 124
    return-object p0
.end method

.method public setUsageStats(Landroid/app/usage/UsageStats;)Landroid/app/usage/CacheQuotaHint$Builder;
    .locals 0
    .param p1, "stats"    # Landroid/app/usage/UsageStats;

    .line 128
    iput-object p1, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    .line 129
    return-object p0
.end method

.method public setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .line 117
    iput-object p1, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUuid:Ljava/lang/String;

    .line 118
    return-object p0
.end method
