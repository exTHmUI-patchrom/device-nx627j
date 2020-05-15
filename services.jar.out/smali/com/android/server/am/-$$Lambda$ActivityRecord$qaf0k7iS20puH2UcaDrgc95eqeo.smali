.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityRecord$qaf0k7iS20puH2UcaDrgc95eqeo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityRecord$qaf0k7iS20puH2UcaDrgc95eqeo;->f$0:Lcom/android/server/am/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityRecord$qaf0k7iS20puH2UcaDrgc95eqeo;->f$0:Lcom/android/server/am/ActivityRecord;

    invoke-static {v0}, Lcom/android/server/am/ActivityRecord;->lambda$ensureActivityConfiguration$0(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method
