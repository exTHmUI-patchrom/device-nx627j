.class Lcom/android/internal/backup/LocalTransport$KVOperation;
.super Ljava/lang/Object;
.source "LocalTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/LocalTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KVOperation"
.end annotation


# instance fields
.field final key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/backup/LocalTransport;

.field final value:[B


# direct methods
.method constructor <init>(Lcom/android/internal/backup/LocalTransport;Ljava/lang/String;[B)V
    .locals 0
    .param p2, "k"    # Ljava/lang/String;
    .param p3, "v"    # [B

    .line 182
    iput-object p1, p0, Lcom/android/internal/backup/LocalTransport$KVOperation;->this$0:Lcom/android/internal/backup/LocalTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p2, p0, Lcom/android/internal/backup/LocalTransport$KVOperation;->key:Ljava/lang/String;

    .line 184
    iput-object p3, p0, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    .line 185
    return-void
.end method
