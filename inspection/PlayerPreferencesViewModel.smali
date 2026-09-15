.class public Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;
.super Ljp3;


# static fields
.field public static final ASPECT_RATIO_FILL:Ljava/lang/String; = "key_aspect_fill"

.field public static final ASPECT_RATIO_FIT:Ljava/lang/String; = "key_aspect_fit"

.field public static final ASPECT_RATIO_ZOOM:Ljava/lang/String; = "key_aspect_zoom"


# instance fields
.field private final aspectRatio:Llz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz1;"
        }
    .end annotation
.end field

.field private final audioTrack:Llz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz1;"
        }
    .end annotation
.end field

.field private final availableQualities:Llz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz1;"
        }
    .end annotation
.end field

.field private final availableServers:Llz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz1;"
        }
    .end annotation
.end field

.field private final isChannelSaved:Llz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz1;"
        }
    .end annotation
.end field

.field private final isLocked:Llz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz1;"
        }
    .end annotation
.end field

.field private final playbackSpeed:Llz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz1;"
        }
    .end annotation
.end field

.field private final quality:Llz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz1;"
        }
    .end annotation
.end field

.field private final selectedQualityIndex:Llz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz1;"
        }
    .end annotation
.end field

.field private final selectedServerIndex:Llz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz1;"
        }
    .end annotation
.end field

.field private final serverName:Llz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz1;"
        }
    .end annotation
.end field

.field private final showCastButton:Llz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz1;"
        }
    .end annotation
.end field

.field private final showReportButton:Llz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz1;"
        }
    .end annotation
.end field

.field private final showSaveButton:Llz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljp3;-><init>()V

    new-instance v0, Llz1;

    const-string v1, "Auto"

    invoke-direct {v0, v1}, Lqe1;-><init>(Ljava/io/Serializable;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->quality:Llz1;

    new-instance v0, Llz1;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Lqe1;-><init>(Ljava/io/Serializable;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->showCastButton:Llz1;

    new-instance v0, Llz1;

    const-string v3, "key_aspect_fit"

    invoke-direct {v0, v3}, Lqe1;-><init>(Ljava/io/Serializable;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->aspectRatio:Llz1;

    new-instance v0, Llz1;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v3}, Lqe1;-><init>(Ljava/io/Serializable;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->playbackSpeed:Llz1;

    new-instance v0, Llz1;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v3}, Lqe1;-><init>(Ljava/io/Serializable;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->availableServers:Llz1;

    new-instance v0, Llz1;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v4}, Lqe1;-><init>(Ljava/io/Serializable;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->selectedServerIndex:Llz1;

    new-instance v0, Llz1;

    invoke-direct {v0, v1}, Lqe1;-><init>(Ljava/io/Serializable;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->serverName:Llz1;

    new-instance v0, Llz1;

    invoke-direct {v0, v2}, Lqe1;-><init>(Ljava/io/Serializable;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->showSaveButton:Llz1;

    new-instance v0, Llz1;

    invoke-direct {v0, v2}, Lqe1;-><init>(Ljava/io/Serializable;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->isChannelSaved:Llz1;

    new-instance v0, Llz1;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lqe1;-><init>(Ljava/io/Serializable;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->availableQualities:Llz1;

    new-instance v0, Llz1;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lqe1;-><init>(Ljava/io/Serializable;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->selectedQualityIndex:Llz1;

    new-instance v0, Llz1;

    invoke-direct {v0, v2}, Lqe1;-><init>(Ljava/io/Serializable;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->showReportButton:Llz1;

    new-instance v0, Llz1;

    invoke-direct {v0, v2}, Lqe1;-><init>(Ljava/io/Serializable;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->isLocked:Llz1;

    new-instance v0, Llz1;

    const-string v1, "Default"

    invoke-direct {v0, v1}, Lqe1;-><init>(Ljava/io/Serializable;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->audioTrack:Llz1;

    return-void
.end method


# virtual methods
.method public getAspectRatio()Lqe1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqe1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->aspectRatio:Llz1;

    return-object v0
.end method

.method public getAudioTrack()Lqe1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqe1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->audioTrack:Llz1;

    return-object v0
.end method

.method public getAvailableQualities()Lqe1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqe1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->availableQualities:Llz1;

    return-object v0
.end method

.method public getAvailableServers()Lqe1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqe1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->availableServers:Llz1;

    return-object v0
.end method

.method public getIsChannelSaved()Lqe1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqe1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->isChannelSaved:Llz1;

    return-object v0
.end method

.method public getIsLocked()Lqe1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqe1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->isLocked:Llz1;

    return-object v0
.end method

.method public getPlaybackSpeed()Lqe1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqe1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->playbackSpeed:Llz1;

    return-object v0
.end method

.method public getQuality()Lqe1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqe1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->quality:Llz1;

    return-object v0
.end method

.method public getSelectedQualityIndex()Lqe1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqe1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->selectedQualityIndex:Llz1;

    return-object v0
.end method

.method public getSelectedServerIndex()Lqe1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqe1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->selectedServerIndex:Llz1;

    return-object v0
.end method

.method public getServerName()Lqe1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqe1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->serverName:Llz1;

    return-object v0
.end method

.method public getShowCastButton()Lqe1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqe1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->showCastButton:Llz1;

    return-object v0
.end method

.method public getShowReportButton()Lqe1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqe1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->showReportButton:Llz1;

    return-object v0
.end method

.method public getShowSaveButton()Lqe1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqe1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->showSaveButton:Llz1;

    return-object v0
.end method

.method public setAspectRatio(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->aspectRatio:Llz1;

    invoke-virtual {v0, p1}, Llz1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setAudioTrack(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->audioTrack:Llz1;

    invoke-virtual {v0, p1}, Llz1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setAvailableQualities(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->availableQualities:Llz1;

    invoke-virtual {v0, p1}, Llz1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setAvailableServers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->availableServers:Llz1;

    invoke-virtual {v0, p1}, Llz1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setIsChannelSaved(Z)V
    .locals 1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->isChannelSaved:Llz1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Llz1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setIsLocked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->isLocked:Llz1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Llz1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->playbackSpeed:Llz1;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Llz1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setQuality(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->quality:Llz1;

    invoke-virtual {v0, p1}, Llz1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setSelectedQualityIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->selectedQualityIndex:Llz1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Llz1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setSelectedServerIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->selectedServerIndex:Llz1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Llz1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->serverName:Llz1;

    invoke-virtual {v0, p1}, Llz1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setShowCastButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->showCastButton:Llz1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Llz1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setShowReportButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->showReportButton:Llz1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Llz1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setShowSaveButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->showSaveButton:Llz1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Llz1;->setValue(Ljava/lang/Object;)V

    return-void
.end method
