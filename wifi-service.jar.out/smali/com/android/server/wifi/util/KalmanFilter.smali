.class public Lcom/android/server/wifi/util/KalmanFilter;
.super Ljava/lang/Object;
.source "KalmanFilter.java"


# instance fields
.field public mF:Lcom/android/server/wifi/util/Matrix;

.field public mH:Lcom/android/server/wifi/util/Matrix;

.field public mP:Lcom/android/server/wifi/util/Matrix;

.field public mQ:Lcom/android/server/wifi/util/Matrix;

.field public mR:Lcom/android/server/wifi/util/Matrix;

.field public mx:Lcom/android/server/wifi/util/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public predict()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/android/server/wifi/util/KalmanFilter;->mF:Lcom/android/server/wifi/util/Matrix;

    iget-object v1, p0, Lcom/android/server/wifi/util/KalmanFilter;->mx:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/util/Matrix;->dot(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/util/KalmanFilter;->mx:Lcom/android/server/wifi/util/Matrix;

    .line 38
    iget-object v0, p0, Lcom/android/server/wifi/util/KalmanFilter;->mF:Lcom/android/server/wifi/util/Matrix;

    iget-object v1, p0, Lcom/android/server/wifi/util/KalmanFilter;->mP:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/util/Matrix;->dot(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/util/KalmanFilter;->mF:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/util/Matrix;->dotTranspose(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/util/KalmanFilter;->mQ:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/util/Matrix;->plus(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/util/KalmanFilter;->mP:Lcom/android/server/wifi/util/Matrix;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{F: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/util/KalmanFilter;->mF:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Q: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/util/KalmanFilter;->mQ:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " H: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/util/KalmanFilter;->mH:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " R: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/util/KalmanFilter;->mR:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " P: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/util/KalmanFilter;->mP:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/util/KalmanFilter;->mx:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/android/server/wifi/util/Matrix;)V
    .locals 6
    .param p1, "z"    # Lcom/android/server/wifi/util/Matrix;

    .line 45
    iget-object v0, p0, Lcom/android/server/wifi/util/KalmanFilter;->mH:Lcom/android/server/wifi/util/Matrix;

    iget-object v1, p0, Lcom/android/server/wifi/util/KalmanFilter;->mx:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/util/Matrix;->dot(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wifi/util/Matrix;->minus(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v0

    .line 46
    .local v0, "y":Lcom/android/server/wifi/util/Matrix;
    iget-object v1, p0, Lcom/android/server/wifi/util/KalmanFilter;->mH:Lcom/android/server/wifi/util/Matrix;

    iget-object v2, p0, Lcom/android/server/wifi/util/KalmanFilter;->mP:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/util/Matrix;->dot(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/util/KalmanFilter;->mH:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/util/Matrix;->dotTranspose(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/util/KalmanFilter;->mR:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/util/Matrix;->plus(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v1

    .line 47
    .local v1, "tS":Lcom/android/server/wifi/util/Matrix;
    iget-object v2, p0, Lcom/android/server/wifi/util/KalmanFilter;->mP:Lcom/android/server/wifi/util/Matrix;

    iget-object v3, p0, Lcom/android/server/wifi/util/KalmanFilter;->mH:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/util/Matrix;->dotTranspose(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/wifi/util/Matrix;->inverse()Lcom/android/server/wifi/util/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/util/Matrix;->dot(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v2

    .line 48
    .local v2, "tK":Lcom/android/server/wifi/util/Matrix;
    iget-object v3, p0, Lcom/android/server/wifi/util/KalmanFilter;->mx:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/util/Matrix;->dot(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/util/Matrix;->plus(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/util/KalmanFilter;->mx:Lcom/android/server/wifi/util/Matrix;

    .line 49
    iget-object v3, p0, Lcom/android/server/wifi/util/KalmanFilter;->mP:Lcom/android/server/wifi/util/Matrix;

    iget-object v4, p0, Lcom/android/server/wifi/util/KalmanFilter;->mH:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/util/Matrix;->dot(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/util/KalmanFilter;->mP:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/util/Matrix;->dot(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/util/Matrix;->minus(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/util/KalmanFilter;->mP:Lcom/android/server/wifi/util/Matrix;

    .line 50
    return-void
.end method
