.class Lcom/android/internal/os/BinderCallsStats$CallStat;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallStat"
.end annotation


# instance fields
.field callCount:J

.field className:Ljava/lang/String;

.field msg:I

.field time:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "msg"    # I

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->className:Ljava/lang/String;

    .line 222
    iput p2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->msg:I

    .line 223
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 227
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 228
    return v0

    .line 231
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 233
    .local v1, "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->msg:I

    iget v3, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->msg:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->className:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 239
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->msg:I

    add-int/2addr v1, v2

    .line 240
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->msg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
