.class public Lcom/google/android/gms/appdatasearch/DocumentContents;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/appdatasearch/DocumentContents$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/b;


# instance fields
.field final a:I

.field final b:[Lcom/google/android/gms/appdatasearch/DocumentSection;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/b;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/DocumentContents;->CREATOR:Lcom/google/android/gms/appdatasearch/b;

    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/appdatasearch/DocumentSection;Ljava/lang/String;ZLandroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->a:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->b:[Lcom/google/android/gms/appdatasearch/DocumentSection;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->d:Z

    iput-object p5, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->e:Landroid/accounts/Account;

    return-void
.end method

.method varargs constructor <init>(Ljava/lang/String;ZLandroid/accounts/Account;[Lcom/google/android/gms/appdatasearch/DocumentSection;)V
    .locals 6

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/appdatasearch/DocumentContents;-><init>(I[Lcom/google/android/gms/appdatasearch/DocumentSection;Ljava/lang/String;ZLandroid/accounts/Account;)V

    new-instance v1, Ljava/util/BitSet;

    invoke-static {}, Lcom/google/android/gms/appdatasearch/h;->a()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_2

    aget-object v2, p4, v0

    iget v2, v2, Lcom/google/android/gms/appdatasearch/DocumentSection;->e:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate global search section type "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/appdatasearch/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->b:[Lcom/google/android/gms/appdatasearch/DocumentSection;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->b:[Lcom/google/android/gms/appdatasearch/DocumentSection;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 1000
    iget-object v5, v1, Lcom/google/android/gms/appdatasearch/DocumentSection;->d:Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    .line 0
    iget-object v5, v5, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "web_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/appdatasearch/DocumentContents;->a(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/b;->a(Lcom/google/android/gms/appdatasearch/DocumentContents;Landroid/os/Parcel;I)V

    return-void
.end method
