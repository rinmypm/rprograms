# Generate digitial clock face
first.nine <- c('00', '01', '02', '03', '04', '05', '06', '07', '08', '09')
hours <- c(first.nine, as.character(seq(10,23,1)))
mins <- c(first.nine, as.character(seq(10,59,1)))
time.chars.l <- lapply(hours, function(h) paste(h, ':', mins, sep=''))
time.chars <- do.call(c, time.chars.l)

# Generate analog clock face
hour.pos <- seq(0, 12, 12/(12*60))[1:720]
min.pos <-seq(0,12, 12/60)[1:60]
all.hours <- rep(hour.pos, 2)
all.times <- cbind(all.hours, min.pos, 24)
for(i in 1:nrow(all.times)) {
  cur.time <- data.frame(list(times=c(all.times[i,1], all.times[i,2]), hands=c(.5, 1)))
  clock <- ggplot(cur.time, aes(xmin=times, xmax=times+0.03, ymin=0, ymax=hands))+
    geom_rect(aes(alpha=0.5))+
    scale_x_continuous(limits=c(0,all.hours[length(all.hours)]), breaks=0:11, 
                       labels=c(12, 1:11))+
    scale_y_continuous(limits=c(0,1.1))+scale_alpha(legend=FALSE)+theme_bw()+
    coord_polar()+
    opts(axis.text.y=theme_blank(), axis.ticks=theme_blank(), 
         panel.grid.major=theme_blank(), 
         strip.background = theme_rect(colour = 'white'),
         title=time.chars[i])
  # Save images to a folder names 'clocks'
  ggsave(plot=clock, filename=paste('clocks/', i, '.png', sep=''), height=5, width=5)
}

# To create animation, use ffmpeg
#ffmpeg -f image2 -r 15 -i clocks/%d.png -b 800k ggplot2_clock.mp4
