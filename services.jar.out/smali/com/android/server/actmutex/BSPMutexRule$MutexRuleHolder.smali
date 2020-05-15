.class Lcom/android/server/actmutex/BSPMutexRule$MutexRuleHolder;
.super Ljava/lang/Object;
.source "BSPMutexRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/actmutex/BSPMutexRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MutexRuleHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/android/server/actmutex/BSPMutexRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/android/server/actmutex/BSPMutexRule;

    invoke-direct {v0}, Lcom/android/server/actmutex/BSPMutexRule;-><init>()V

    sput-object v0, Lcom/android/server/actmutex/BSPMutexRule$MutexRuleHolder;->sInstance:Lcom/android/server/actmutex/BSPMutexRule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/actmutex/BSPMutexRule;
    .locals 1

    .line 18
    sget-object v0, Lcom/android/server/actmutex/BSPMutexRule$MutexRuleHolder;->sInstance:Lcom/android/server/actmutex/BSPMutexRule;

    return-object v0
.end method
