.class public Lcom/cbs/app/manager/AuthStatusManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/cbs/app/manager/AuthStatusManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/manager/AuthStatusManager;->a:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/manager/AuthStatusManager;->b:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/cbs/app/manager/AuthStatusManager;->c:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcom/cbs/app/manager/AuthStatusManager;->d:Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;

    .line 31
    return-void
.end method

.method public static b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 81
    :cond_1
    return v0
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getStatusEnum()Lcom/cbs/app/livetv/model/UserStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/cbs/app/livetv/model/UserStatusEnum;->c:Lcom/cbs/app/livetv/model/UserStatusEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getStatusEnum()Lcom/cbs/app/livetv/model/UserStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/cbs/app/livetv/model/UserStatusEnum;->d:Lcom/cbs/app/livetv/model/UserStatusEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getStatusEnum()Lcom/cbs/app/livetv/model/UserStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/cbs/app/livetv/model/UserStatusEnum;->a:Lcom/cbs/app/livetv/model/UserStatusEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()Z
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getStatusEnum()Lcom/cbs/app/livetv/model/UserStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/cbs/app/livetv/model/UserStatusEnum;->b:Lcom/cbs/app/livetv/model/UserStatusEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Z
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getStatusEnum()Lcom/cbs/app/livetv/model/UserStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/cbs/app/livetv/model/UserStatusEnum;->e:Lcom/cbs/app/livetv/model/UserStatusEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStatusEnum()Lcom/cbs/app/livetv/model/UserStatusEnum;
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserStatus;->getStatus()Lcom/cbs/app/livetv/model/UserStatusEnum;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/cbs/app/livetv/model/UserStatusEnum;->a:Lcom/cbs/app/livetv/model/UserStatusEnum;

    goto :goto_0
.end method

.method public static getTrackingAuthString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    const-string v0, "anon;"

    .line 107
    sget-object v1, Lcom/cbs/app/manager/AuthStatusManager;->b:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    if-eqz v1, :cond_1

    .line 108
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserStatusDescription()Ljava/lang/String;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_1

    .line 111
    const-string v0, ";"

    .line 112
    const-string v2, "subscriber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_5

    .line 116
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getPackageInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 118
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/registration/PackageInfo;

    .line 119
    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/PackageInfo;->getPackageStatus()Ljava/lang/String;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_2

    const-string v2, "TRIAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";trial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reg"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_1
    return-object v0

    .line 123
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";pay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_3
    const-string v2, "suspended"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sub;susp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_4
    const-string v2, "exsubscriber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sub;exsub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public static getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/cbs/app/manager/AuthStatusManager;->b:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    sget-object v1, Lcom/cbs/app/manager/AuthStatusManager;->b:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    if-eqz v1, :cond_0

    .line 141
    sget-object v1, Lcom/cbs/app/manager/AuthStatusManager;->b:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserId()J

    move-result-wide v2

    .line 142
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 143
    sget-object v0, Lcom/cbs/app/manager/AuthStatusManager;->b:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    return-object v0
.end method

.method public static getUserStatusDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserStatus;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 49
    sget-object v2, Lcom/cbs/app/view/model/registration/UserDescription;->SUSPENDED:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const-string v0, "suspended"

    .line 52
    :cond_0
    sget-object v2, Lcom/cbs/app/view/model/registration/UserDescription;->SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    const-string v0, "subscriber"

    .line 55
    :cond_1
    sget-object v2, Lcom/cbs/app/view/model/registration/UserDescription;->EX_SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    const-string v0, "exsubscriber"

    .line 58
    :cond_2
    sget-object v2, Lcom/cbs/app/view/model/registration/UserDescription;->REGISTERED:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    const-string v0, "registered"

    .line 63
    :cond_3
    return-object v0
.end method

.method public static setUserAuthStatus(Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;)V
    .locals 0

    .prologue
    .line 38
    sput-object p0, Lcom/cbs/app/manager/AuthStatusManager;->b:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/cbs/app/manager/AuthStatusManager;->d:Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/cbs/app/manager/AuthStatusManager;->d:Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;

    invoke-interface {v0}, Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;->b()V

    .line 186
    :cond_0
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 3

    .prologue
    .line 156
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    if-eqz v0, :cond_2

    .line 157
    check-cast p1, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    .line 158
    invoke-static {p1}, Lcom/cbs/app/manager/AuthStatusManager;->setUserAuthStatus(Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;)V

    .line 159
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getPackageInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 163
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/registration/PackageInfo;

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packageCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/PackageInfo;->getPackageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packageStatus: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/PackageInfo;->getPackageStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/manager/AuthStatusManager;->d:Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/cbs/app/manager/AuthStatusManager;->d:Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;

    invoke-interface {v0}, Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;->a()V

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/manager/AuthStatusManager;->d:Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/cbs/app/manager/AuthStatusManager;->d:Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;

    invoke-interface {v0}, Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;->b()V

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Lcom/cbs/app/service/AuthServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/AuthServiceImpl;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/cbs/app/manager/AuthStatusManager;->c:Landroid/app/Activity;

    invoke-interface {v0, v1, p0}, Lcom/cbs/app/service/AuthService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 152
    return-void
.end method
