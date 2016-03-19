.class final Lcom/urbanairship/push/iam/d$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/d$5;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/push/iam/d$5;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/d$5;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/urbanairship/push/iam/d$5$2;->a:Lcom/urbanairship/push/iam/d$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 684
    invoke-static {}, Lcom/urbanairship/push/iam/d;->j()I

    move-result v0

    if-nez v0, :cond_0

    .line 685
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/urbanairship/push/iam/d;->a(Z)Z

    .line 687
    :cond_0
    return-void
.end method
