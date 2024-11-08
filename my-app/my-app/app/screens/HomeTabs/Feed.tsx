import React, { useRef, useEffect, useState } from 'react';
import { StyleSheet, Text, View, TextInput, ScrollView, Dimensions, Animated, Image } from 'react-native';
import { MaterialCommunityIcons } from '@expo/vector-icons';
import ProductItem from './items/ProductItem';
import CategoryItem from './items/CategoryItem';

const { width } = Dimensions.get('window');

const Feed = ({ navigation }: { navigation: any }) => {
  const scrollX = useRef(new Animated.Value(0)).current;
  const scrollViewRef = useRef(null);
  const bannerIndex = useRef(0);
  const [searchQuery, setSearchQuery] = useState('');

  const banners = [
    require('../../../assets/images/slider1.webp'),
    require('../../../assets/images/slider2.webp'),
    require('../../../assets/images/slider3.webp'),
  ];

  useEffect(() => {
    const interval = setInterval(() => {
      bannerIndex.current = (bannerIndex.current + 1) % banners.length;
      scrollViewRef.current.scrollTo({ x: bannerIndex.current * width, animated: true });
    }, 3000);

    return () => clearInterval(interval);
  }, []);

  return (
    <ScrollView style={styles.container}>
      <View style={styles.play}>
        <MaterialCommunityIcons name="map-marker" size={20} color="brown" />
        <Text style={styles.address} onPress={() => navigation.navigate('Map')}>Hàm Thuận Bắc, Bình Thuận, Việt Nam</Text>
        <MaterialCommunityIcons style={styles.dome} name="phone-in-talk-outline" size={20} color="brown" />
      </View>

      <View style={styles.searchContainer}>
        <MaterialCommunityIcons name="magnify" size={20} color="gray" />
        <TextInput 
          placeholder="Search by product name..." 
          style={styles.searchInput} 
          value={searchQuery}
          onChangeText={setSearchQuery}
        />
      </View>

      <ScrollView
        ref={scrollViewRef}
        horizontal
        pagingEnabled
        showsHorizontalScrollIndicator={false}
        scrollEventThrottle={16}
        onScroll={Animated.event(
          [{ nativeEvent: { contentOffset: { x: scrollX } } }],
          { useNativeDriver: false }
        )}
        style={styles.bannerContainer}
      >
        {banners.map((banner, index) => (
          <Image key={index} source={banner} style={styles.banner} />
        ))}
      </ScrollView>

      <Text style={styles.categoryTitle}>Categories</Text>
      <CategoryItem />

      <Text style={styles.categoryTitle}>Products</Text>
      
      {/* Pass searchQuery to ProductItem */}
      <ProductItem navigation={navigation} searchQuery={searchQuery} />
    </ScrollView>
  );
};

export default Feed;

const styles = StyleSheet.create({
  container: {
    backgroundColor: '#fff',
    flex: 1,
    padding: 10,
  },
  bannerContainer: {
    width: '100%',
    height: 150,
    marginBottom: 20,
  },
  banner: {
    width: width - 20,
    height: 150,
    resizeMode: 'contain',
    borderRadius: 10,
    marginHorizontal: 10,
  },
  play: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 20,
  },
  address: {
    fontSize: 14,
    marginLeft: 10,
    color: 'brown',
  },
  dome: {
    marginLeft: 'auto',
  },
  searchContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    borderWidth: 1,
    borderRadius: 30,
    padding: 10,
    marginBottom: 10,
    borderColor: '#ccc',
  },
  searchInput: {
    marginLeft: 10,
    flex: 1,
    color: '#000',
  },
  categoryTitle: {
    fontSize: 20,
    fontWeight: 'bold',
    marginBottom: 5,
  },
});
