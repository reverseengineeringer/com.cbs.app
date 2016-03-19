.class final Lcom/urbanairship/analytics/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/analytics/a;->b(Landroid/app/Activity;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/analytics/a;


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/a;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/urbanairship/analytics/a$1;->a:Lcom/urbanairship/analytics/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/urbanairship/analytics/a$1;->a:Lcom/urbanairship/analytics/a;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/a;->a()V

    .line 117
    return-void
.end method
