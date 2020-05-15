.class public final Landroid/provider/TimeZoneRulesDataContract;
.super Ljava/lang/Object;
.source "TimeZoneRulesDataContract.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/TimeZoneRulesDataContract$Operation;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.timezone"

.field private static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "content://com.android.timezone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TimeZoneRulesDataContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .line 29
    sget-object v0, Landroid/provider/TimeZoneRulesDataContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-object v0
.end method
