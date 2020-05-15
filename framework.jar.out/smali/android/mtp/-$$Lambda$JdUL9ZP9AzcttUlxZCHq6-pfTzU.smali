.class public final synthetic Landroid/mtp/-$$Lambda$JdUL9ZP9AzcttUlxZCHq6-pfTzU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/mtp/-$$Lambda$JdUL9ZP9AzcttUlxZCHq6-pfTzU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/mtp/-$$Lambda$JdUL9ZP9AzcttUlxZCHq6-pfTzU;

    invoke-direct {v0}, Landroid/mtp/-$$Lambda$JdUL9ZP9AzcttUlxZCHq6-pfTzU;-><init>()V

    sput-object v0, Landroid/mtp/-$$Lambda$JdUL9ZP9AzcttUlxZCHq6-pfTzU;->INSTANCE:Landroid/mtp/-$$Lambda$JdUL9ZP9AzcttUlxZCHq6-pfTzU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
