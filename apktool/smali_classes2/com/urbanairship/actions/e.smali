.class public final Lcom/urbanairship/actions/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/actions/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Exception;

.field private final b:Lcom/urbanairship/actions/ActionValue;

.field private final c:Lcom/urbanairship/actions/e$a;


# direct methods
.method private constructor <init>(Lcom/urbanairship/actions/ActionValue;Ljava/lang/Exception;Lcom/urbanairship/actions/e$a;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    if-nez p1, :cond_0

    new-instance p1, Lcom/urbanairship/actions/ActionValue;

    invoke-direct {p1}, Lcom/urbanairship/actions/ActionValue;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/urbanairship/actions/e;->b:Lcom/urbanairship/actions/ActionValue;

    .line 128
    iput-object p2, p0, Lcom/urbanairship/actions/e;->a:Ljava/lang/Exception;

    .line 129
    if-eqz p3, :cond_1

    :goto_0
    iput-object p3, p0, Lcom/urbanairship/actions/e;->c:Lcom/urbanairship/actions/e$a;

    .line 130
    return-void

    .line 129
    :cond_1
    sget-object p3, Lcom/urbanairship/actions/e$a;->a:Lcom/urbanairship/actions/e$a;

    goto :goto_0
.end method

.method public static a()Lcom/urbanairship/actions/e;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/urbanairship/actions/e;

    sget-object v1, Lcom/urbanairship/actions/e$a;->a:Lcom/urbanairship/actions/e$a;

    invoke-direct {v0, v2, v2, v1}, Lcom/urbanairship/actions/e;-><init>(Lcom/urbanairship/actions/ActionValue;Ljava/lang/Exception;Lcom/urbanairship/actions/e$a;)V

    return-object v0
.end method

.method public static a(Lcom/urbanairship/actions/ActionValue;)Lcom/urbanairship/actions/e;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Lcom/urbanairship/actions/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/urbanairship/actions/e$a;->a:Lcom/urbanairship/actions/e$a;

    invoke-direct {v0, p0, v1, v2}, Lcom/urbanairship/actions/e;-><init>(Lcom/urbanairship/actions/ActionValue;Ljava/lang/Exception;Lcom/urbanairship/actions/e$a;)V

    return-object v0
.end method

.method static a(Lcom/urbanairship/actions/e$a;)Lcom/urbanairship/actions/e;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    new-instance v0, Lcom/urbanairship/actions/e;

    invoke-direct {v0, v1, v1, p0}, Lcom/urbanairship/actions/e;-><init>(Lcom/urbanairship/actions/ActionValue;Ljava/lang/Exception;Lcom/urbanairship/actions/e$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;)Lcom/urbanairship/actions/e;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/urbanairship/actions/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/urbanairship/actions/e$a;->d:Lcom/urbanairship/actions/e$a;

    invoke-direct {v0, v1, p0, v2}, Lcom/urbanairship/actions/e;-><init>(Lcom/urbanairship/actions/ActionValue;Ljava/lang/Exception;Lcom/urbanairship/actions/e$a;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/urbanairship/actions/ActionValue;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/urbanairship/actions/e;->b:Lcom/urbanairship/actions/ActionValue;

    return-object v0
.end method

.method public final c()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/urbanairship/actions/e;->a:Ljava/lang/Exception;

    return-object v0
.end method

.method public final d()Lcom/urbanairship/actions/e$a;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/urbanairship/actions/e;->c:Lcom/urbanairship/actions/e$a;

    return-object v0
.end method
