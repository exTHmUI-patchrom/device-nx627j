.class public Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;
.super Ljava/lang/Object;
.source "BaseApplicationRecord.java"


# instance fields
.field protected mLastTime:J

.field protected mPackageName:Ljava/lang/String;

.field protected mTotalCount:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "time"    # J

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->mTotalCount:J

    .line 12
    iput-object p1, p0, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->mPackageName:Ljava/lang/String;

    .line 13
    iput-wide p2, p0, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->mLastTime:J

    .line 14
    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->mTotalCount:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->mLastTime:J

    return-wide v0
.end method

.method public setCount(J)V
    .locals 0
    .param p1, "Value"    # J

    .line 29
    iput-wide p1, p0, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->mTotalCount:J

    .line 30
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 25
    iput-wide p1, p0, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->mLastTime:J

    .line 26
    return-void
.end method
