.class final Lcom/urbanairship/analytics/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/analytics/c;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:J


# direct methods
.method constructor <init>(Landroid/app/Activity;J)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/urbanairship/analytics/c$3;->a:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/urbanairship/analytics/c$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/urbanairship/p;)V
    .locals 6

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/c$3;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/urbanairship/analytics/c$3;->b:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/urbanairship/analytics/c;->b(Lcom/urbanairship/analytics/c;Landroid/app/Activity;IJ)V

    .line 169
    return-void
.end method
