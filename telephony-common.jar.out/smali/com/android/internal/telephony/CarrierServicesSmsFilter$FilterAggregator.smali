.class final Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;
.super Ljava/lang/Object;
.source "CarrierServicesSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServicesSmsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FilterAggregator"
.end annotation


# instance fields
.field private final mFilterLock:Ljava/lang/Object;

.field private mFilterResult:I

.field private mNumPendingFilters:I

.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;I)V
    .locals 0
    .param p2, "numFilters"    # I

    .line 273
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterLock:Ljava/lang/Object;

    .line 274
    iput p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    .line 275
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterResult:I

    .line 276
    return-void
.end method

.method private combine(I)V
    .locals 1
    .param p1, "result"    # I

    .line 297
    iget v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterResult:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterResult:I

    .line 298
    return-void
.end method


# virtual methods
.method onFilterComplete(I)V
    .locals 5
    .param p1, "result"    # I

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    .line 281
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->combine(I)V

    .line 282
    iget v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    if-nez v1, :cond_0

    .line 285
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 287
    .local v1, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$400(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterResult:I

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;->onFilterComplete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    goto :goto_0

    .line 290
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 293
    .end local v1    # "token":J
    :cond_0
    :goto_0
    monitor-exit v0

    .line 294
    return-void

    .line 293
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
