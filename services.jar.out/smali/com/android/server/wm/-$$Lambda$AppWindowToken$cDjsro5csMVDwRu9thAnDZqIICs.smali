.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppWindowToken$cDjsro5csMVDwRu9thAnDZqIICs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$cDjsro5csMVDwRu9thAnDZqIICs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$cDjsro5csMVDwRu9thAnDZqIICs;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$cDjsro5csMVDwRu9thAnDZqIICs;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$cDjsro5csMVDwRu9thAnDZqIICs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$cDjsro5csMVDwRu9thAnDZqIICs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/AppWindowToken;->lambda$hasNonDefaultColorWindow$3(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
