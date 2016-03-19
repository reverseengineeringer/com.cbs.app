.class public Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/analytics/AnalyticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AgeGroupAndGender"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object v0, p0, Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;->a:Ljava/lang/String;

    .line 517
    iput-object v0, p0, Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;->b:Ljava/lang/String;

    .line 520
    iput-object p1, p0, Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;->a:Ljava/lang/String;

    .line 521
    iput-object p2, p0, Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;->b:Ljava/lang/String;

    .line 522
    return-void
.end method


# virtual methods
.method public getAgeGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;->b:Ljava/lang/String;

    return-object v0
.end method
