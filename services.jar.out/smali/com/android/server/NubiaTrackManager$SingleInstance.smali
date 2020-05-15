.class Lcom/android/server/NubiaTrackManager$SingleInstance;
.super Ljava/lang/Object;
.source "NubiaTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NubiaTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstance"
.end annotation


# static fields
.field static instance:Lcom/android/server/NubiaTrackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/android/server/NubiaTrackManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/NubiaTrackManager;-><init>(Lcom/android/server/NubiaTrackManager$1;)V

    sput-object v0, Lcom/android/server/NubiaTrackManager$SingleInstance;->instance:Lcom/android/server/NubiaTrackManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
